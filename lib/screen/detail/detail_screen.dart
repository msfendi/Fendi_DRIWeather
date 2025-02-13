import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_rekadigi/data/models/responses/weather_list_response.dart';
import 'package:weather_app_rekadigi/screen/detail/bloc/today_forecast/today_forecast_bloc.dart';
import 'bloc/next_forecast/next_forecast_bloc.dart';
import 'widgets/footer_component.dart';
import 'widgets/header_component.dart';
import 'widgets/nextForecast_component.dart';
import 'widgets/todayForecast_component.dart';

class DetailScreen extends StatefulWidget {
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    super.initState();
    context.read<TodayForecastBloc>().add(TodayForecastEvent.getWeatherToday());
    context.read<NextForecastBloc>().add(NextForecastEvent.getNextForecast());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(71, 191, 223, 1),
              Color.fromRGBO(74, 145, 255, 1),
            ],
          ),
        ),
        child: Column(
          children: [
            HeaderComponent(
              date: DateFormat('MMM, d').format(DateTime.now()),
              onBack: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              flex: 2,
              child: BlocBuilder<TodayForecastBloc, TodayForecastState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => Center(child: Text('Data no retrieve')),
                    loading: () => Center(child: CircularProgressIndicator()),
                    loaded: (hourlyWeatherToday) {
                      final now = DateTime.now().subtract(Duration(hours: 1));
                      final List<Hourly> newerHourlyData = hourlyWeatherToday
                          .where((item) => item.time!.isAfter(now))
                          .take(10)
                          .toList();
                      return TodayForecastComponent(
                        hourlyData: newerHourlyData,
                      );
                    },
                    error: (message) => Container(
                      child: Center(child: Text(message)),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 3,
              child: BlocBuilder<NextForecastBloc, NextForecastState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => Center(child: Text('Data Not Retrieve')),
                    loading: () => Center(
                      child: CircularProgressIndicator(),
                    ),
                    loaded: (dailyForecastWeather) {
                      final now = DateTime.now();
                      final List<Daily> newerDailyData = dailyForecastWeather
                          .where((item) => item.time!.toLocal().isAfter(now))
                          .toList();
                      return NextForecastComponent(
                        dailyData: newerDailyData,
                      );
                    },
                    error: (message) => Center(child: Text(message)),
                  );
                },
              ),
            ),
            FooterComponent(),
          ],
        ),
      ),
    );
  }
}
