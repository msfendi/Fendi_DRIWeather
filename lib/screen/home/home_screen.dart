import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_rekadigi/screen/detail/detail_screen.dart';
import 'package:weather_app_rekadigi/screen/search_location/bloc/now_location/now_location_bloc.dart';
import 'package:weather_app_rekadigi/screen/search_location/search_location.dart';

import '../../data/models/responses/weather_list_response.dart';
import 'bloc/weather_today_bloc.dart';
import 'notification_modal_components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<NowLocationBloc>().add(NowLocationEvent.getMyLocation());
    context.read<NowLocationBloc>().add(NowLocationEvent.getMyCity());
    context.read<WeatherTodayBloc>().add(WeatherTodayEvent.getWeatherToday());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF378BFF),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF54A3FF), Color(0xFF378BFF)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 60),
              _buildHeader(context),
              const SizedBox(height: 20),
              _buildWeatherIcon(),
              const SizedBox(height: 20),
              BlocBuilder<WeatherTodayBloc, WeatherTodayState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => Center(child: Text('No data')),
                    loading: () => Center(child: CircularProgressIndicator()),
                    loaded: (dailyWeather) =>
                        _buildWeatherInfoCard(dailyWeather),
                    error: (message) => Center(child: Text(message)),
                  );
                },
              ),
              const SizedBox(height: 80),
              _buildWeatherDetailsButton(context),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.location_on_outlined, color: Colors.white, size: 24),
              const SizedBox(width: 5),
              BlocBuilder<NowLocationBloc, NowLocationState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => Text(
                      " ",
                      style: GoogleFonts.overpass(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    loadedCityName: (city) => Text(
                      city,
                      style: GoogleFonts.overpass(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SearchLocation()));
                },
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.notifications_none_outlined,
                color: Colors.white, size: 24),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => NotificationModalComponent(
                  onClose: () => Navigator.of(context).pop(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildWeatherIcon() {
    return SizedBox(
      height: 170,
      child: Image.asset("assets/images/cloudy.png"),
    );
  }

  Widget _buildWeatherInfoCard(Daily daily) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.5)),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              DateFormat('EEEE, d MMMM', 'en_US').format(daily.time!),
              style: GoogleFonts.overpass(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 5),
            Stack(
              alignment: Alignment.center,
              children: [
                // Background temperature with opacity
                Text(
                  " ${daily.values!.temperatureAvg!.toInt()}°",
                  style: GoogleFonts.overpass(
                    fontSize: 100,
                    fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(0.5),
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                // Foreground temperature
                Text(
                  " ${daily.values!.temperatureAvg!.toInt()}°",
                  style: GoogleFonts.overpass(
                    fontSize: 100,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(3.0, 3.0),
                        blurRadius: 3.0,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "Cloudy",
              style: GoogleFonts.overpass(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 27),
            Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildWeatherDetail(
                    Icons.air, "Wind", "${daily.values!.windSpeedAvg} km/h"),
                _buildWeatherDetail(
                    Icons.water_drop, "Hum ", "${daily.values!.humidityAvg}%"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherDetail(IconData icon, String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 20,
      children: [
        Icon(icon, color: Colors.white, size: 20),
        Text(
          "$title",
          style: GoogleFonts.overpass(fontSize: 14, color: Colors.white),
        ),
        Text(
          "|",
          style: GoogleFonts.overpass(fontSize: 18, color: Colors.white),
        ),
        Text(
          " $value",
          style: GoogleFonts.overpass(fontSize: 14, color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildWeatherDetailsButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      ),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailScreen()));
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Weather Details",
            style: GoogleFonts.overpass(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Color(0xFF444E72),
            ),
          ),
          const SizedBox(width: 10),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black),
        ],
      ),
    );
  }
}
