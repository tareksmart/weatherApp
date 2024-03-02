import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/views/weather_now.dart';

import '../cubits/weather_cubit/weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherCub = BlocProvider.of<WeatherCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('search'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            onSubmitted: (value) {
              weatherCub.getWeather(cityName: value);
              Navigator.of(context).pop();
            },
            decoration: const InputDecoration(
                labelText: 'search',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                hintText: 'search by country',
                suffixIcon: Icon(Icons.search)),
          ),
        ),
      ),
    );
  }
}
