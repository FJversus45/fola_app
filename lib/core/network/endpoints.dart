import 'package:flutter/foundation.dart';

class Endpoints {
  static const baseUrl =
      kDebugMode
          ? "https://api.weatherapi.com"
          : "https://api.weatherapi.com";

  static String getWeather(String city)=>'/v1/current.json?key=316c0aee1fa5498383a163359251502&q=$city&aqi=no';
}
