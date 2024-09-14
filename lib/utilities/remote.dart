import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

class Remote {
  final dio = Dio();
  final _log = Logger('Remote');
  static const baseUrl = 'http://127.0.0.1:8090/';

  Future<Map<String, dynamic>> getRestCall(String url) async {
    try {
      final response = await dio.get(baseUrl + url);
      return response.data;
    } catch (e) {
      _log.severe('Could not get data from $url.', e);
      rethrow;
    }
  }

  Future<Map<String, dynamic>> postRestCall(String url) async {
    try {
      final response = await dio.post(baseUrl + url);
      return response.data;
    } catch (e) {
      _log.severe('Could not Post data from $url.', e);
      rethrow;
    }
  }
}
