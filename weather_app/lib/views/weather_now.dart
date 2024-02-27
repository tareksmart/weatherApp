import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';

class WeatherNow extends StatelessWidget {
  const WeatherNow({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherCub = BlocProvider.of<WeatherCubit>(context);
    return Scaffold(
      appBar: AppBar(title: Text('weather now')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherCub.weatherModel.country,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('updated at:'),
              Text('${weatherCub.weatherModel.time}')
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
                child: Image.network('${weatherCub.weatherModel.image_url}'),
              ),
              Text('${weatherCub.weatherModel.currentTemp}',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'max Temp:${weatherCub.weatherModel.maxTemp}',
                    ),
                    Text('min temp:${weatherCub.weatherModel.minTemp}'),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 64,
          ),
          Text(
            '${weatherCub.weatherModel.condition}',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
