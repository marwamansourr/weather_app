
import 'package:weather/data/data%20source/remote_data_Source.dart';
import 'package:weather/domain/entities/weather.dart';
import 'package:weather/domain/repo/base_weather_repo.dart';

class WeatherRepo implements BaseWeatherRepo{

   final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepo(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName) async{

     return (await baseRemoteDataSource.getWeatherByCountry(cityName))!;
  }

}