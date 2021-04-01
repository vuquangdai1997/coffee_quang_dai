import 'package:CoffeeQuangDai/models/product.dart';
import 'package:flutter/material.dart';
import 'body_giohang.dart';
import 'package:CoffeeQuangDai/models/product.dart';
class Gio_hang extends StatelessWidget {
  final Product product;
  const Gio_hang({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text( ' Giỏ hàng của tôi'),
        ),
        body: bodyGioHang(product:product,),
    );
  }
}
