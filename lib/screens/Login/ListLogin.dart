import 'package:CoffeeQuangDai/screens/Login/login.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
class ListLogin {
  String taiKhoan;
  String matKhau;
  String Status;
  ListLogin({this.taiKhoan, this.matKhau, this.Status});
  // factory ListLogin.fromJson(Map<String,dynamic> json){
  //   return ListLogin(
  //     taiKhoan: json["username"],
  //     matKhau: json["password"],
  //     Status : json["status"]
  //   );}
  //   Map<String, dynamic> tojson(){
  //     return {
  //       "username":taiKhoan,
  //       "password": matKhau,
  //       "status" : Status,
  //   };
  // }
}
