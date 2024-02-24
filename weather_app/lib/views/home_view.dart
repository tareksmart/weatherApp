import 'package:flutter/material.dart';
import 'package:weather_app/views/no_weather_body.dart';
import 'package:weather_app/views/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SearchView();
                }));
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: NoWeatherBody(),
    );
  }
}
