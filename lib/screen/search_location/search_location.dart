import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:weather_app_rekadigi/data/models/responses/find_location_response.dart';
import 'package:weather_app_rekadigi/screen/search_location/bloc/find_location/find_location_bloc.dart';
import 'package:weather_app_rekadigi/screen/search_location/bloc/now_location/now_location_bloc.dart';

class SearchLocation extends StatefulWidget {
  const SearchLocation({Key? key}) : super(key: key);

  @override
  _SearchLocationState createState() => _SearchLocationState();
}

class _SearchLocationState extends State<SearchLocation> {
  late GoogleMapController mapController;
  // LatLng _center =
  //     const LatLng(-7.797068, 110.370529); // Yogyakarta coordinates
  bool _showRecentSearch = false;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    context.read<NowLocationBloc>().add(NowLocationEvent.getMyLocation());
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Google Map section
          Positioned.fill(
            child: BlocConsumer<NowLocationBloc, NowLocationState>(
              listener: (context, state) {
                print('$state error');
                state.maybeWhen(
                  orElse: () {},
                  changedLocation: (latitude, longitude) {
                    return GoogleMap(
                      onMapCreated: (mapController) {
                        mapController.animateCamera(
                          CameraUpdate.newLatLng(
                            LatLng(double.parse(latitude),
                                double.parse(longitude)),
                          ),
                        );
                      },
                      myLocationEnabled: true,
                      initialCameraPosition: CameraPosition(
                        target: LatLng(
                            double.parse(latitude), double.parse(longitude)),
                        zoom: 11.0,
                      ),
                    );
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (position) {
                    return GoogleMap(
                      onMapCreated: _onMapCreated,
                      myLocationEnabled: true,
                      initialCameraPosition: CameraPosition(
                        target: LatLng(position.latitude, position.longitude),
                        zoom: 11.0,
                      ),
                    );
                  },
                  orElse: () {
                    // return GoogleMap(
                    //   onMapCreated: _onMapCreated,
                    //   myLocationEnabled: true,
                    //   initialCameraPosition: CameraPosition(
                    //     target: LatLng(latitude, longitude),
                    //     zoom: 11.0,
                    //   ),
                    // );
                    // state.
                    return Center(child: CircularProgressIndicator());
                  },
                );
              },
            ),
          ),

          // Top white section with search box
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFCFCFC),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 59),
                  // Search box as TextField
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      height: 57,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 16),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  _showRecentSearch = false;
                                });
                              },
                              icon: Icon(Icons.arrow_back)),
                          const SizedBox(width: 16),
                          Expanded(
                            child: TextField(
                              onTap: () {
                                setState(() {
                                  _showRecentSearch = true;
                                });
                              },
                              onChanged: (String? newValue) {
                                if (_debounce?.isActive ?? false)
                                  _debounce?.cancel();
                                _debounce = Timer(
                                    const Duration(milliseconds: 500), () {
                                  context.read<FindLocationBloc>().add(
                                      FindLocationEvent.findLocation(
                                          newValue ?? ''));
                                });
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search here',
                                hintStyle: TextStyle(
                                  fontFamily: 'Overpass',
                                  fontSize: 18,
                                  color: const Color(0xFF838BAA),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
          // Recent search section
          if (_showRecentSearch)
            Positioned(
              top: 120,
              left: 0,
              right: 0,
              bottom: 340,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 16),
                      child: Text(
                        'Recent search',
                        style: TextStyle(
                          fontFamily: 'Overpass',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF444E72),
                        ),
                      ),
                    ),
                    BlocBuilder<FindLocationBloc, FindLocationState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () =>
                              Center(child: Text('data not retrieve')),
                          loading: () =>
                              Center(child: CircularProgressIndicator()),
                          loaded: (locationList) =>
                              _buildRecentSearchItem(locationList ?? []),
                          error: (message) => Center(child: Text(message)),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildRecentSearchItem(List<FindLocationResponse> locationList) {
    return Column(
        children: locationList
            .map(
              (item) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                child: BlocListener<FindLocationBloc, FindLocationState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      savedLocation: (message) =>
                          ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                        ),
                      ),
                      error: (message) =>
                          ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                        ),
                      ),
                    );
                  },
                  child: InkWell(
                    onTap: () {
                      context.read<NowLocationBloc>().add(
                          NowLocationEvent.changeMyLocation(
                              latitude: item.lat!, longitude: item.lon!));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.history,
                          size: 24,
                        ),
                        const SizedBox(width: 28),
                        Expanded(
                          child: Text(
                            item.displayName!,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: 'Overpass',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF444E72),
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList());
  }
}
