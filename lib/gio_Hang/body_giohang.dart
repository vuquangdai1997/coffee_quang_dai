import 'package:flutter/material.dart';
import 'package:CoffeeQuangDai/models/product.dart';
class bodyGioHang extends StatelessWidget{
  const bodyGioHang({
    Key key,
    @required this.product,
  }) : super(key: key,);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child:  Column(
          children: [
                  Container(
                      child:Text(product.title) ,
                  )
          ],
        ),
      ),
    );
  }
}

