
import 'package:dio/dio.dart';

abstract class failure{
  final String error;

  failure(this.error);

}

class server_error extends failure
{
  server_error(super.error);
  //var d=DioException(requestOptions: requestOptions);
}