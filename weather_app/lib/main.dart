import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';
import 'package:weather_app/cubits/weather_cubit/weather_states.dart';
import 'package:weather_app/views/home_view.dart';
import 'package:weather_app/views/widget/theme_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(),
      child: Builder(
          // تم استخدام بلدر ويدجت علشان البلوك يلاقى كونتكست غير الكونتكست اللى بينشا منه
          builder: (context) {
        final bloc = BlocProvider.of<WeatherCubit>(context);
        return BlocBuilder<WeatherCubit,WeatherState>(
          builder: (context,state) {
            return MaterialApp(
                theme: ThemeData(
                  primarySwatch: AppThemedata.getMaterialColor(
                      bloc.weatherModel != null
                          ? bloc.weatherModel!.condition
                          : ''),
                ),
                home: HomeView());
          }
        );
      }),
    );
  }
}
