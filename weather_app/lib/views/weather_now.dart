import 'package:flutter/material.dart';

class WeatherNow extends StatelessWidget {
  const WeatherNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('weather now')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Luxor',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('updated at:'), Text('12:12')],
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
                child: Image.network(
                    'https://scx2.b-cdn.net/gfx/news/hires/2019/weatherforec.jpg'),
              ),
              Text('17',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'maxTemp:17',
                    ),
                    Text('min temp:10'),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 64,
          ),
          Text(
            'light Rainy',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
