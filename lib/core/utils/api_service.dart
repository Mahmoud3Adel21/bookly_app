import 'package:dio/dio.dart';

class ApiSevice {
  final _baseURL = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiSevice(this.dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get('$_baseURL$endpoint');
    return response.data;
  }
}
