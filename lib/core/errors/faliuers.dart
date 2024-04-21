import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFaliuer extends Failure {
  ServerFaliuer(super.errorMessage);

  factory ServerFaliuer.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliuer('Connection timeout API');

      case DioExceptionType.sendTimeout:
        return ServerFaliuer('Send timeout API');

      case DioExceptionType.receiveTimeout:
        return ServerFaliuer('Receive timeout API');

      case DioExceptionType.badCertificate:
        return ServerFaliuer('');

      case DioExceptionType.badResponse:
        return ServerFaliuer.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFaliuer('Your request was canceled');

      case DioExceptionType.connectionError:
        return ServerFaliuer('Connection Error');

      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFaliuer('Check your internet');
        }
        return ServerFaliuer('There was an error ,please try again later');

      default:
        return ServerFaliuer('There was an error ,please try again later');
    }
  }

  factory ServerFaliuer.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFaliuer(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFaliuer('Your request not found please try again later');
    } else if (statusCode == 500) {
      return ServerFaliuer('Internal server error please try again');
    } else {
      return ServerFaliuer('There was an error ,please try again later');
    }
  }
}
