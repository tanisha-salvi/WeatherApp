import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:weather_app/model/weather_model.dart';

class WeatherApiClient {
  Future<WeatherModel>? getWeatherModel(String? lat, String? lon) async{
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&exclude=minutely&appid=475ef83f84a5d92f46897b80390aa3b6&units=metric");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(WeatherModel.fromJson(body).cityName);
    print(WeatherModel.fromJson(body).hourlytemp);
    print(WeatherModel.fromJson(body).hourlyicon);
    print(WeatherModel.fromJson(body).dailytemp_max);
    print(WeatherModel.fromJson(body).dailydt);
    print(WeatherModel.fromJson(body).hourlydt);
    return WeatherModel.fromJson(body);
  }
}