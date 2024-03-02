import 'dart:core';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/weather_states.dart';
import 'package:weather_app/model/weather_today_model.dart';
import 'package:weather_app/service/web_service.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherIntialState());
   WeatherModel? weatherModel;
  getWeather({required String cityName}) async {
    try {
        weatherModel =
          await WeatherService().getWeather(cityName);
      emit(WeatherLoadedState());
    } on Exception catch (e) {
      emit(WeatherNotLoaded());
    }
  }
}
