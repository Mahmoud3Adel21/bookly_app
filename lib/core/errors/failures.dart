import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioErrorType.response:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('Request to ApiServer was Canceled');
      case DioErrorType.other:
        if (dioError.message.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        } else {
          return ServerFailure('Unexpected Error, Please try Again!');
        }
      default:
        return ServerFailure('Opps There was an error, Please try Later!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your Request Not Found, Please try Later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, Please try Later!');
    } else {
      return ServerFailure('Opps There was an error, Please try Later!');
    }
  }
}
