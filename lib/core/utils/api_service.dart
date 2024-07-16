import 'package:dio/dio.dart';

class api_service
{
  final baseUrl="https://www.googleapis.com/books/v1/";
  final Dio dio;

  api_service(this.dio);
  get({required String endPoint})async{
    var response =await dio.get("$baseUrl$endPoint");
    return response.data;
  }

}