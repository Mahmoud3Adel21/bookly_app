import 'package:dio/dio.dart';

class ApiSevice {
  final _baseURL = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  ApiSevice(this._dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await _dio.get('$_baseURL$endpoint');
    return response.data;
  }
}
