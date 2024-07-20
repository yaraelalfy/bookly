import 'package:dio/dio.dart';

class api_service {
  final baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio dio;

  api_service(this.dio);
  Future<Map<String, dynamic>> get({required String endPoints}) async {
    var response = await dio.get("$baseUrl$endPoints");
    return response.data;
  }
}
