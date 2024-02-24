import 'package:flutter/material.dart';
import 'package:weather_app/views/weather_now.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('search'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
                labelText: 'search',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                hintText: 'search by country',
                suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: (() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (cont) {
                            return WeatherNow();
                          },
                        ),
                      );
                    }))),
          ),
        ),
      ),
    );
  }
}
