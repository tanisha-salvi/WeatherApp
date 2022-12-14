import 'package:flutter/material.dart';

String datetime = DateTime.now().toString();

Widget currentWeatherDetails(String wind, String clouds, String humidity){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.deepPurple[50],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset("assets/icons/windspeed.png"),
          ),
          Text("$wind km/h"),
        ],
      ),
      Column(
        children: [
          Container(
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.deepPurple[50],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset("assets/icons/clouds.png"),
          ),
          Text("$clouds%"),
        ],
      ),
      Column(
        children: [
          Container(
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.deepPurple[50],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset("assets/icons/humidity.png"),
          ),
          Text("$humidity%"),
        ],
      )
    ],
  );
}