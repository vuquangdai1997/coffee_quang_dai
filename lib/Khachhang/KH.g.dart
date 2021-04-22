part of 'request_khachhang.dart';
Listkh _$ListKHFromJson(Map<String, dynamic> json){
  return Listkh(
      tenkh: json['tenkh'],
      makh: json['makh'],
      sdt: json['sdt'],
      email: json['email'],
      diachi: json['diachi'],
      anhkh: json['anhkh'],
      matkhau: json['matkhau']
  );
}
