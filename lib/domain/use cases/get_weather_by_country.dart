import 'package:weather/domain/repo/base_weather_repo.dart';

import '../entities/weather.dart';
//this class is the connection point between the domain layer and presentation layer
class GetWeatherByCountryName{
  // we can't make an instance from an abstract class so we do a reference
  final BaseWeatherRepo repo;
 GetWeatherByCountryName(this.repo);
  // sting city name will come from the presentation layer
  Future<Weather> execute(String cityName)async{
     return await repo.getWeatherByCityName(cityName);
 }
}