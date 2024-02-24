class Constatnts {
  static String baseUrl(String city) {
    return 'https://api.weatherapi.com/v1/forecast.json?key=cc912fb8f65e491684b185450242302&q=$city&days=1';
  }
}
