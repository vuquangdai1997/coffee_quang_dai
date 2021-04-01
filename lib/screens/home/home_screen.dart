import 'package:flutter/material.dart';
import 'package:CoffeeQuangDai/constants.dart';
import 'components/body.dart';
import 'components/bottom_nav_bar.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      appBar: buildAppBar(),
      body: Body(),
    );
  }
  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.black45,
        elevation: 0,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Coffee ',
                style: TextStyle(color: ksecondaryColor),
              ),
              TextSpan(
                text: " QuangĐại ",
                style: TextStyle(color: kPrimaryColor),
              ),
            ],
          ),
        ),
        actions: <Widget>[

          IconButton(
            icon: const Icon(Icons.shopping_cart),
            color: Colors.cyanAccent,
            iconSize:30,
            onPressed: () {},
          ),
        ],
    );
  }
}
