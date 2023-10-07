import 'package:weather/domain/entities/weather.dart';
//instead of creating it again
class WeatherModel extends Weather{
  WeatherModel(
      super.id,
      super.cityName,
      super.main,
      super.description,
      super.pressure,
      );

  factory WeatherModel.fromJson(Map<String, dynamic> json)=>
      WeatherModel
        (
        json["id"],
        json["name"],
        json["weather"][0]["main"],
        json["weather"][0]["description"],
        json["main"]["pressure"],

      );

}