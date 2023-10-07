import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather/core/uitiles/constants.dart';
import 'package:weather/data/model/weather_model.dart';

abstract class BaseRemoteDataSource{
  Future<WeatherModel?> getWeatherByCountry(String cityName);

}
class RemoteDataSource extends BaseRemoteDataSource{

  @override
 Future<WeatherModel?> getWeatherByCountry(String cityName) async{
    try{
      var response= await Dio().get("${AppConstant.baseUrl}/weather?q=$cityName&appid=${AppConstant.apiKey}");
       print(response);
       return WeatherModel.fromJson(response.data);

    }
        catch(e){
      print(e);
    throw Exception();
        }

  }

}