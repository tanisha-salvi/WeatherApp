import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String datetime = DateFormat("yMMMMd").format(DateTime.now());

Widget cityHeader(String location, String temp, String iconId){
  return Column(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(location, style: const TextStyle(fontSize: 30),),
          Text(datetime)
        ],
      ),
      const SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
              "assets/weather/$iconId.png",
            height: 60,
            width: 60,
          ),
          Text("$temp \u2103" , style: const TextStyle(fontSize: 45),),
        ],
      ),
    ],
  );
}