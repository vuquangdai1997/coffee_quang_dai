import 'package:flutter/material.dart';
import 'package:CoffeeQuangDai/constants.dart';

import 'body_Dang_Nhap.dart';
class dangNhap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          elevation: 0,
          centerTitle: true,
          title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Coffee ',
                  style: TextStyle(color: ksecondaryColor, fontSize: 20),

                ),
                TextSpan(
                  text: " QuangĐại ",
                  style: TextStyle(color: kPrimaryColor, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      body: Body(),
    );

  }
}
