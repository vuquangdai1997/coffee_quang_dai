import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'RestAPI.dart';
import 'request_khachhang.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}
class _BodyState extends State<Body> {
  RestAPI restAPI = new RestAPI(Dio());
  List<Listkh> entries = List<Listkh>.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    restAPI.getKH()
        .then((value) {
      if (value != null) {
        entries.addAll(value.data);
        setState(() {});
      }}).onError((error, stackTrace) {

    });
    Widget testWidget = new MediaQuery(
        data: new MediaQueryData(),
        child: new MaterialApp(home: Scaffold(
          body: SafeArea(
            child: Container(
              height: double.infinity,
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext context,index) {
                  return Container(
                    height: 50,
                    child: Center(child: Text('${entries[index].tenkh}', style:  TextStyle(color: Colors.black),)),
                  );
                },
                separatorBuilder: (BuildContext context,index) => const Divider(),
              ),
            ),
          ),
        ))
    );

    return testWidget;
  }
}
// class khachhang extends StatefulWidget {
//   @override
//   _khachhangState createState() => _khachhangState();
// }
//
// class _khachhangState extends State<khachhang> {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(" Khach hang"),
//         ),
//         // body: FutureBuilder<List<Listkh>>(
//         //         //  // future: RestAPI(Dio()).getKH(),
//         //         //   builder: null,
//         //         // ),
//       ),
//     );
//   }
// }

