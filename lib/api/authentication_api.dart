import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart' show required;

class AuthenticationAPI {
  final Dio _dio = Dio();
  final Logger _logger = Logger();

  Future<void> register({
    String username,
    String email,
    String password,
  }) async {
    final response = await _dio
        .post('https://curso-api-flutter.herokuapp.com/api/v1/register',
            options: Options(headers: {
              'Content-Type': 'application/json',
            }),
            data: {"username": username, "email": email, "password": password});

    _logger.i(response.data);
  }
}
