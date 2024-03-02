import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';
import 'package:weather_app/views/widget/theme_data.dart';

class WeatherNow extends StatelessWidget {
  const WeatherNow({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherCub = BlocProvider.of<WeatherCubit>(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
           
       
            colors: [
              AppThemedata.getMaterialColor(weatherCub.weatherModel!.condition)
                  .shade500,
              AppThemedata.getMaterialColor(weatherCub.weatherModel!.condition)
                  .shade300,
              AppThemedata.getMaterialColor(weatherCub.weatherModel!.condition)
                  .shade100,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherCub.weatherModel!.country,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('updated at:'),
                Text(
                    '${weatherCub.weatherModel!.time.hour}:${weatherCub.weatherModel!.time.minute}')
              ],
            ),
            const SizedBox(
              height: 64,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.network('${weatherCub.weatherModel!.image_url}'),
                ),
                Text('${weatherCub.weatherModel!.currentTemp.round()}',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'max Temp:${weatherCub.weatherModel!.maxTemp.round()}',
                      ),
                      Text('min temp:${weatherCub.weatherModel!.minTemp.round()}'),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 64,
            ),
            Text(
              '${weatherCub.weatherModel!.condition}',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
