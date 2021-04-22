import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
//import 'package:CoffeeQuangDai/Khachhang/KH.g.dart';
part 'KH.g.dart';
class Listkh {
  List<Listkh> data;
  String diachi, email, makh, sdt, tenkh, matkhau,anhkh;
  Listkh({this.makh, this.tenkh, this.sdt, this.email, this.diachi, this.anhkh, this.matkhau});
  factory Listkh.fromJson(Map<String, dynamic> json) => _$ListKHFromJson(json);
}
