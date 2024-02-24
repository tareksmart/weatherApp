class WeatherModel {
  final String time;
  final double maxTemp;
  final double minTemp;
  final double currentTemp;
  final String condition;
  final String country;
  final String? image_url;
  WeatherModel({
    required this.time,
    required this.maxTemp,
    required this.minTemp,
    required this.currentTemp,
    required this.condition,
    // ignore: non_constant_identifier_names
    this.image_url,
required this.country
  });
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      time: json['current']['last_updated'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      currentTemp: json['current']['temp_c'],
      condition: json['forecast']['forecastday'][0]['day']['condition']['text'],
      country: json['location']['name'],
    );
  }
}
