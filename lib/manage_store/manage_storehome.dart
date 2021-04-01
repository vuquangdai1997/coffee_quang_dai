import 'package:CoffeeQuangDai/screens/details/components/body.dart';
import 'package:flutter/material.dart';
import 'package:CoffeeQuangDai/manage_store/Body_Manage_Store.dart';
class Manage_store extends StatefulWidget {
  @override
  _Manage_storeState createState() => _Manage_storeState();
}

class _Manage_storeState extends State<Manage_store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text(' Quản lý chi nhánh 1',
          style: TextStyle(
              fontSize: 20,
            fontWeight: FontWeight.bold
          ),
         ),
       ),
      body: Body_Manage_Store(),
    );
  }
}
