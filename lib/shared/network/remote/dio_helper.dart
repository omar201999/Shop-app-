
import 'package:dio/dio.dart';

class DioHelper
{
  static Dio? dio;

  static init()
  {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://student.valuxapps.com/api/',
        receiveDataWhenStatusError: true,
      )
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? queryParameters,
    String lang = 'en',
    String? token,
  })
  async{
    dio?.options.headers = {
      'lang':lang,
      'Authorization' : token??'',
      'Content-Type':'application/json'
    };
    return await dio!.get(
        url,
        queryParameters: queryParameters,

    );
  }

  static Future<Response> postData({
  required String url,
    Map<String, dynamic>? queryParameters,
    required dynamic data,
    String lang = 'en',
    String? token,
})
  async{
    dio?.options.headers = {
      'lang':lang,
      'Authorization' : token??'',
      'Content-Type':'application/json'
    };
     return await dio!.post(
         url,
       queryParameters: queryParameters,
       data: data
     );
  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? queryParameters,
    required dynamic data,
    String lang = 'en',
    String? token,
  })
  async{
    dio?.options.headers = {
      'lang':lang,
      'Authorization' : token??'',
      'Content-Type':'application/json'
    };
    return await dio!.put(
        url,
        queryParameters: queryParameters,
        data: data
    );
  }
}
