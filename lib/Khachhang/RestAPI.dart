import 'request_khachhang.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'RestAPI.g.dart';
@RestApi(baseUrl: "http://localhost:8080/")
abstract class RestAPI {
  static String BaseUrl = "http://localhost:8080/";
 // RestAPI(Dio dio);
  factory RestAPI(Dio dio, {String baseUrl}) = _RestAPI;
  static RestAPI create() {
    final dio = Dio();
    return RestAPI(dio);
  }
  @GET("KH")
  Future<Listkh> getKH();
}
