import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_rekadigi/data/models/responses/weather_list_response.dart';

class TodayForecastComponent extends StatelessWidget {
  final List<Hourly> hourlyData;

  TodayForecastComponent({
    Key? key,
    required this.hourlyData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: hourlyData
              .map((data) => _buildWeatherCard(data.time!, data.values!))
              .toList(),
        ),
      ),
    );
  }

  Widget _buildWeatherCard(DateTime time, Map<String, dynamic> data) {
    final now = DateTime.now();
    return Container(
      width: 70,
      height: 160,
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 13),
      decoration: BoxDecoration(
          color: (time.toLocal().hour == now.hour)
              ? Colors.white.withValues(alpha: 0.4)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 0.5, color: Colors.white)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "${data['temperature'].toInt()}°C",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Overpass',
            ),
          ),
          Image.asset(
            'assets/images/cloudy.png',
            width: 43,
            height: 43.67,
            // fit: BoxFit.contain,
          ),
          Text(
            DateFormat('HH:mm').format(time.toLocal()),
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Overpass',
            ),
          ),
        ],
      ),
    );
  }
}
