import 'package:dio/dio.dart';
import 'package:weather_app/model/weather_today_model.dart';
import 'package:weather_app/constant/constatnt.dart';

class WeatherService {
  Dio dio = Dio();
  Future<WeatherModel> getWeather(String city) async {
    try {
      Response response = await dio.get(Constatnts.baseUrl(city));
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      //e.response بنوصل للداتا اذا كان فى مشكلة  والمفاتيح المكتوبة نتيجة لرد للتجربة جرب على كروم وشوف النتيجة
      final String errorMessege = e.response?.data['error']['message'] ??
          'oops there is an error try later';
      throw Exception(errorMessege);
    } catch (e) {
      throw Exception('oops there is an error try later');
    }
  }
}
