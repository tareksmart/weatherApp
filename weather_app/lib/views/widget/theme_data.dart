import 'package:flutter/material.dart';

class AppThemedata {
  static MaterialColor getMaterialColor(String weatherCondition) {
    switch (weatherCondition.toLowerCase()) {
      case "sunny":
        return Colors.yellow; // Sunny
      case "partly cloudy":
        return Colors.lightBlue; // Partly Cloudy
      case "cloudy":
        return Colors.grey; // Cloudy
      case "overcast":
        return Colors.grey; // Overcast
      case "mist":
        return Colors.grey; // Mist
      case "patchy rain possible":
      case "patchy snow possible":
      case "patchy sleet possible":
      case "patchy freezing drizzle possible":
        return Colors
            .lightBlue; // Patchy Rain/Snow/Sleet/Freezing Drizzle Possible
      case "thundery outbreaks possible":
        return Colors.red; // Thundery Outbreaks Possible
      case "blowing snow":
      case "blizzard":
        return Colors.lightBlue; // Blowing Snow/Blizzard
      case "fog":
        return Colors.grey; // Fog
      case "freezing fog":
        return Colors.grey; // Freezing Fog
      case "patchy light drizzle":
      case "light drizzle":
      case "freezing drizzle":
      case "heavy freezing drizzle":
        return Colors
            .lightBlue; // Patchy Light Drizzle/Light Drizzle/Freezing Drizzle/Heavy Freezing Drizzle
      case "patchy light rain":
      case "light rain":
      case "moderate rain at times":
      case "moderate rain":
      case "heavy rain at times":
      case "heavy rain":
      case "light freezing rain":
      case "moderate or heavy freezing rain":
        return Colors
            .lightBlue; // Patchy Light Rain/Light Rain/Moderate Rain/Heavy Rain/Freezing Rain
      case "light sleet":
      case "moderate or heavy sleet":
        return Colors.lightBlue; // Light Sleet/Moderate or Heavy Sleet
      case "patchy light snow":
      case "light snow":
      case "patchy moderate snow":
      case "moderate snow":
      case "patchy heavy snow":
      case "heavy snow":
        return Colors
            .blue; // Patchy Light Snow/Light Snow/Moderate Snow/Heavy Snow
      case "ice pellets":
        return Colors.grey; // Ice Pellets
      case "light rain shower":
      case "moderate or heavy rain shower":
      case "torrential rain shower":
        return Colors
            .lightBlue; // Light Rain Shower/Moderate or Heavy Rain Shower/Torrential Rain Shower
      case "light sleet showers":
      case "moderate or heavy sleet showers":
        return Colors
            .lightBlue; // Light Sleet Showers/Moderate or Heavy Sleet Showers
      case "light snow showers":
      case "moderate or heavy snow showers":
        return Colors.blue; // Light Snow Showers/Moderate or Heavy Snow Showers
      case "light showers of ice pellets":
      case "moderate or heavy showers of ice pellets":
        return Colors
            .blue; // Light Showers of Ice Pellets/Moderate or Heavy Showers of Ice Pellets
      case "patchy light rain with thunder":
      case "moderate or heavy rain with thunder":
      case "patchy light snow with thunder":
      case "moderate or heavy snow with thunder":
        return Colors
            .red; // Patchy Light Rain/Snow with Thunder/Moderate or Heavy Rain/Snow with Thunder
      default:
        return Colors.grey;
    }
  }
}
