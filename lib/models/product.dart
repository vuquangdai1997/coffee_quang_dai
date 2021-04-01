import 'package:CoffeeQuangDai/discouse/Sukien.dart';
import 'package:flutter/material.dart';
import 'package:CoffeeQuangDai/discouse/listdiscous.dart';
class Product {
  final String image, title, description;
  final int price, id;
  final Color color;
  final String size;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.color,
    this.size,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Bạc Sỉu",
      price: 234,
      description: dummyText,
      image: "assets/images/bacsiu.jpg",
      color: Color(0xFF3D82AE),
      size : " ",
  ),

  Product(
      id: 2,
      title: " Coffee Đen Nóng ",
      price: 234,
      description: dummyText,
      image: "assets/images/dennong.jpg",
      color: Color(0xFFD3A984),
      size : " "),
  Product(
      id: 3,
      title: "Ca Cao Đá Ngọt",
      price: 1999,
      description: dummyText,
      image: "assets/images/cacaodangot.webp",
      color: Color(0xFF989493),
      size : " "),
  Product(
      id: 4,
      title: "Capuchino",
      price: 1666,
      description: dummyText,
      image: "assets/images/cafe-capuchino.jpg",
      color: Color(0xFFE6B398),
      size : " "),
  Product(
      id: 5,
      title: "Coffe Trứng",
      price: 8888,
      description: dummyText,
      image: "assets/images/coffeetrung.jpg",
      color: Color(0xFFFB7883),
      size : " "),
  Product(
    id: 6,
    title: "Coffee Bọt",
    price: 8881,
    description: dummyText,
    image: "assets/images/coffeebot.webp",
    color: Color(0xFFAEAEAE),
    size : " "
  ),
];

String dummyText ="Cửa hàng của chúng tôi rất hân hạnh được phục vụ quý khách.";