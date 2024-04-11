import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFaliuere extends Failure {
  ServerFaliuere(super.errorMessage);

  factory ServerFaliuere.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliuere('Connection timeout API');

      case DioExceptionType.sendTimeout:
        return ServerFaliuere('Send timeout API');

      case DioExceptionType.receiveTimeout:
        return ServerFaliuere('Receive timeout API');

      case DioExceptionType.badCertificate:
        return ServerFaliuere('');

      case DioExceptionType.badResponse:
        return ServerFaliuere.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFaliuere('Your request was canceled');

      case DioExceptionType.connectionError:
        return ServerFaliuere('Connection Error');

      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFaliuere('Check your internet');
        }
        return ServerFaliuere('There was an error ,please try again later');

      default:
        return ServerFaliuere('There was an error ,please try again later');
    }
  }

  factory ServerFaliuere.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFaliuere(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFaliuere('Your request not found please try again later');
    } else if (statusCode == 500) {
      return ServerFaliuere('Internal server error please try again');
    } else {
      return ServerFaliuere('There was an error ,please try again later');
    }
  }
}
