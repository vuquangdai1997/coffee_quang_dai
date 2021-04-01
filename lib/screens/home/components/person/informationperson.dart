import 'package:flutter/material.dart';

import 'bodyperson.dart';
class InformationPerson extends StatefulWidget {
  @override
  _InformationPersonState createState() => _InformationPersonState();
}

class _InformationPersonState extends State<InformationPerson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.cyanAccent,
        elevation: 0,
        centerTitle: true,
        title:Text('Hồ Sơ')
          ),
      body: Bodyperson(),
    );
  }
}
