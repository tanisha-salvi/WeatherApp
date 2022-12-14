class WeatherModel{
  String? cityName;
  double? temp;
  String? wind;
  String? humidity;
  String? pressure;
  String? clouds;
  String? icon_id;
  List<String>? hourlydt;
  List<String>? hourlytemp;
  List<String>? hourlyicon;
  List<String>? dailytemp_max;
  List<String>? dailytemp_min;
  List<String>? dailyicon;
  List<String>? dailydt;


  WeatherModel({
   this.cityName,
   this.temp,
   this.wind,
   this.humidity,
   this.pressure,
    this.clouds,
    this.icon_id,
    this.hourlydt,
    this.hourlytemp,
    this.hourlyicon,
    this.dailyicon,
    this.dailytemp_max,
    this.dailytemp_min,
    this.dailydt,
  });

  WeatherModel.fromJson(Map<String, dynamic> json){
    cityName = json["timezone"].toString();
    temp = json["current"]["temp"];
    wind = json["current"]["wind_speed"].toString();
    humidity = json["current"]["humidity"].toString();
    pressure = json["current"]["pressure"].toString();
    clouds = json["current"]["clouds"].toString();
    icon_id = json["current"]["weather"][0]["icon"].toString();

    hourlydt = [
      json["hourly"][0]["dt"].toString(),
      json["hourly"][1]["dt"].toString(),
      json["hourly"][2]["dt"].toString(),
      json["hourly"][3]["dt"].toString(),
      json["hourly"][4]["dt"].toString(),
      json["hourly"][5]["dt"].toString(),
      json["hourly"][6]["dt"].toString(),
    ];

    hourlytemp = [
      json["hourly"][0]["temp"].toString(),
      json["hourly"][1]["temp"].toString(),
      json["hourly"][2]["temp"].toString(),
      json["hourly"][3]["temp"].toString(),
      json["hourly"][4]["temp"].toString(),
      json["hourly"][5]["temp"].toString(),
      json["hourly"][6]["temp"].toString()
    ];

    hourlyicon = [
      json["hourly"][0]["weather"][0]["icon"].toString(),
      json["hourly"][1]["weather"][0]["icon"].toString(),
      json["hourly"][2]["weather"][0]["icon"].toString(),
      json["hourly"][3]["weather"][0]["icon"].toString(),
      json["hourly"][4]["weather"][0]["icon"].toString(),
      json["hourly"][5]["weather"][0]["icon"].toString(),
      json["hourly"][6]["weather"][0]["icon"].toString(),
    ];

    dailytemp_max = [
      json["daily"][0]["temp"]["max"].toString(),
      json["daily"][1]["temp"]["max"].toString(),
      json["daily"][2]["temp"]["max"].toString(),
      json["daily"][3]["temp"]["max"].toString(),
      json["daily"][4]["temp"]["max"].toString(),
      json["daily"][5]["temp"]["max"].toString(),
      json["daily"][6]["temp"]["max"].toString(),
    ];

    dailytemp_min = [
      json["daily"][0]["temp"]["min"].toString(),
      json["daily"][1]["temp"]["min"].toString(),
      json["daily"][2]["temp"]["min"].toString(),
      json["daily"][3]["temp"]["min"].toString(),
      json["daily"][4]["temp"]["min"].toString(),
      json["daily"][5]["temp"]["min"].toString(),
      json["daily"][6]["temp"]["min"].toString(),
    ];

    dailyicon = [
      json["daily"][0]["weather"][0]["icon"].toString(),
      json["daily"][1]["weather"][0]["icon"].toString(),
      json["daily"][2]["weather"][0]["icon"].toString(),
      json["daily"][3]["weather"][0]["icon"].toString(),
      json["daily"][4]["weather"][0]["icon"].toString(),
      json["daily"][5]["weather"][0]["icon"].toString(),
      json["daily"][6]["weather"][0]["icon"].toString(),
    ];

    dailydt = [
      json["daily"][0]["dt"].toString(),
      json["daily"][1]["dt"].toString(),
      json["daily"][2]["dt"].toString(),
      json["daily"][3]["dt"].toString(),
      json["daily"][4]["dt"].toString(),
      json["daily"][5]["dt"].toString(),
      json["daily"][6]["dt"].toString(),
    ];
  }

}