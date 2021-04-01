import 'package:flutter/cupertino.dart';
class Disscouse {
  final Image image;
  final int soLuong;
  final String title;
  final String ss;
  Disscouse({this.image, this.soLuong, this.title, this.ss});
}
List<Disscouse> disscouses =[
  Disscouse(
    image: Image.asset('assets/images/background.jpg'),
    soLuong: 20,
    title: 'Nhân Ngày Mùng 8-3 chúc mừng chị em',
    ss:"bo may dau",
    )
  ];