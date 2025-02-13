import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app_rekadigi/data/datasource/location_local_datasource.dart';
import 'package:weather_app_rekadigi/data/datasource/location_remote_datasource.dart';
import 'package:weather_app_rekadigi/data/datasource/maps_remote_datasource.dart';
import 'package:weather_app_rekadigi/data/datasource/weather_remote_datasource.dart';
import 'package:weather_app_rekadigi/screen/detail/bloc/next_forecast/next_forecast_bloc.dart';
import 'package:weather_app_rekadigi/screen/detail/bloc/today_forecast/today_forecast_bloc.dart';
import 'package:weather_app_rekadigi/screen/detail/detail_screen.dart';
import 'package:weather_app_rekadigi/screen/home/bloc/weather_today_bloc.dart';
import 'package:weather_app_rekadigi/screen/home/home_screen.dart';
import 'package:weather_app_rekadigi/screen/search_location/bloc/find_location/find_location_bloc.dart';
import 'package:weather_app_rekadigi/screen/search_location/bloc/now_location/now_location_bloc.dart';
import 'package:weather_app_rekadigi/screen/search_location/search_location.dart';
import 'package:weather_app_rekadigi/screen/splash/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => WeatherTodayBloc(WeatherRemoteDatasource(),
                LocationLocalDatasource(), LocationRemoteDatasource())),
        BlocProvider(
            create: (context) => TodayForecastBloc(WeatherRemoteDatasource(),
                LocationLocalDatasource(), LocationRemoteDatasource())),
        BlocProvider(
            create: (context) => NextForecastBloc(WeatherRemoteDatasource(),
                LocationLocalDatasource(), LocationRemoteDatasource())),
        BlocProvider(
            create: (context) => NowLocationBloc(LocationRemoteDatasource(),
                LocationLocalDatasource(), MapsRemoteDatasource())),
        BlocProvider(
            create: (context) => FindLocationBloc(
                MapsRemoteDatasource(), LocationLocalDatasource())),
      ],
      child: NeumorphicApp(
        title: 'Flutter Demo',
        theme: NeumorphicThemeData(
          baseColor: Color(0xFFFFFFFF),
          lightSource: LightSource.topLeft,
          depth: 10,
        ),
        darkTheme: NeumorphicThemeData(
          baseColor: Color(0xFF3E3E3E),
          lightSource: LightSource.topLeft,
          depth: 6,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
