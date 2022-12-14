import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/decorations/text_style.dart';

String getTime(final timeStamp){
  DateTime time = DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000);
  String x = DateFormat('jm').format(time);
  return x;
}

Widget HourlyWidget(String temp, String iconId, String dt, int index){
  return Container(
    margin: const EdgeInsets.all(12),
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      color:
          index == 0
              ? Colors.deepPurple[400]
              : Colors.deepPurple[50],
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          getTime(
              int.parse(dt)),
              style:
              index == 0
                  ? daytimeNowStyle
                  : daytimeStyle,
          ),
        Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(10),
          child: Image.asset("assets/weather/$iconId.png"),
        ),
        Text(
          "$temp \u2103" ,
          style:
          index == 0
            ? tempNowStyle
            : tempStyle,
        ),
      ],
    ),
  );
}