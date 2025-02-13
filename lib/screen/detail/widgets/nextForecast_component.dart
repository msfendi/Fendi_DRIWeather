import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../data/models/responses/weather_list_response.dart';

class NextForecastComponent extends StatelessWidget {
  final List<Daily> dailyData;

  NextForecastComponent({
    Key? key,
    required this.dailyData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Next Forecast',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Overpass',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              thickness: 6.0,
              radius: Radius.circular(5),
              child: ListView.builder(
                itemCount: dailyData.length,
                itemBuilder: (context, index) =>
                    _buildWeatherList(dailyData[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeatherList(Daily daily) {
    return Container(
      height: 60,
      padding: EdgeInsets.only(right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            DateFormat('MMM, d').format(daily.time!.toLocal()),
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Overpass',
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          Image.asset(
            'assets/images/cloudy.png',
            width: 43,
            height: 43.67,
          ),
          Text(
            "${daily.values!.temperatureAvg!.toInt()}°C",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Overpass',
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
