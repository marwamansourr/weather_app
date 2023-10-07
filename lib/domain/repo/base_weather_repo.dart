
 import 'package:weather/domain/entities/weather.dart';

abstract class BaseWeatherRepo{
   //weather is a retun type (entity)to return the data from the api
 Future <Weather> getWeatherByCityName(String cityName);
}