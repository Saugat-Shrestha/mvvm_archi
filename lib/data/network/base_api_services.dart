abstract class BaseApiServices {
  Future<dynamic> getApi(String url, {bool isAuth = false});
  Future<dynamic> getingApi(String url);
  Future<dynamic> postApi(String url, dynamic data, {bool isAuth = false});
  Future<dynamic> deleteApi(String url);
}