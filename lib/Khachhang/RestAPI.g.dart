// GENERATED CODE - DO NOT MODIFY BY HAND
part of'RestAPI.dart';
// **************************************************************************
// RetrofitGenerator
// **************************************************************************
 class _RestAPI implements RestAPI {
  _RestAPI(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'http://localhost:8080/KH/GetAllInfo/';
  }
  final Dio _dio;
  String baseUrl;
  @override
  Future<Listkh>getKH() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('KH',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Listkh.fromJson(_result.data);
    return value;
  }
}

