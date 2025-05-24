import 'dart:async';
import 'package:dio/dio.dart';
import 'package:mvvm_architecture/data/network/error_handler.dart';
import 'package:mvvm_architecture/data/network/base_api_services.dart';
import 'package:mvvm_architecture/app/app_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NetworkApiServices implements BaseApiServices {
  static AppPreferences? _appPreferences;
  final Dio _dio = Dio();
  final Duration _timeout = const Duration(seconds: 30);

  NetworkApiServices() {
    _dio.options.connectTimeout = _timeout;
    _dio.options.receiveTimeout = _timeout;
    _dio.options.sendTimeout = _timeout;
    _initializePreferences();
  }

  static Future<void> _initializePreferences() async {
    if (_appPreferences == null) {
      final prefs = await SharedPreferences.getInstance();
      _appPreferences = AppPreferences(prefs);
    }
  }

  Future<Map<String, String>> _getHeaders({bool isAuth = false}) async {
    await _initializePreferences();
    if (!isAuth) {
      return {'Content-Type': 'application/json'};
    }
    final token = await _appPreferences!.getUserToken();
    return {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };
  }

  @override
  Future<dynamic> getApi(String url, {bool isAuth = false}) async {
    try {
      final headers = await _getHeaders(isAuth: isAuth);
      final response = await _dio.get(url, options: Options(headers: headers));
      return response.data;
    } catch (error) {
      throw ErrorHandler.handle(error).failure;
    }
  }

  @override
  Future<dynamic> deleteApi(String url) async {
    try {
      final headers = await _getHeaders(isAuth: true);
      final response = await _dio.delete(
        url,
        options: Options(headers: headers),
      );
      return response.data;
    } catch (error) {
      throw ErrorHandler.handle(error).failure;
    }
  }

  @override
  Future<dynamic> putApi(String url, dynamic data) async {
    try {
      final headers = await _getHeaders(isAuth: true);
      final response = await _dio.put(
        url,
        data: data,
        options: Options(headers: headers),
      );
      return response.data;
    } catch (error) {
      throw ErrorHandler.handle(error).failure;
    }
  }

  @override
  Future<dynamic> getingApi(String url) async {
    try {
      final headers = await _getHeaders(isAuth: true);
      final response = await _dio.get(url, options: Options(headers: headers));
      return response.data;
    } catch (error) {
      throw ErrorHandler.handle(error).failure;
    }
  }

  @override
  Future<dynamic> postApi(
    String url,
    dynamic data, {
    bool isAuth = false,
  }) async {
    try {
      final headers = await _getHeaders(isAuth: isAuth);
      final response = await _dio.post(
        url,
        data: data,
        options: Options(headers: headers),
      );
      return response.data;
    } catch (error) {
      throw ErrorHandler.handle(error).failure;
    }
  }
}
