import 'package:flutter/material.dart';
import 'package:CoffeeQuangDai/Khachhang/khachhangscrean.dart';
class Body_Manage_Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
       Container(
          width: 600,
          height: 350,
          color: Colors.blueAccent.withOpacity(0.3),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
                Text(
                  'Quản lý hệ thống',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        height: 80,
                        width: 150,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.home, size: 18),
                          label: Text("Nhập Hàng"),
                        )),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        height: 80,
                        width: 150,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.home, size: 18),
                          label: Text("Doanh thu"),
                        )),
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                    Container(
                        height: 80,
                        width: 150,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.home, size: 18),
                          label: Text("Phân Hệ Kho"),
                        )),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                    Container(
                        height: 80,
                        width: 150,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.home, size: 18),
                          label: Text("Nhân viên"),
                        )),
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                    Container(
                        height: 80,
                        width: 150,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.home, size: 18),
                          label: Text("QL chi tiêu"),
                        )),

                  ],
                )
              ])),
      Container(
              width: 600,
              height: 350,
              color: Colors.blueAccent.withOpacity(0.3),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
                    Text(
                      'Quản lý App Mobile',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            height: 80,
                            width: 150,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.home, size: 18),
                              label: Text("Sự kiện"),
                            )),
                        Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height: 80,
                            width: 150,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context){
                                  return Body();
                                }));
                              },
                              icon: Icon(Icons.home, size: 18),
                              label: Text("Khach hang"),
                            )),
                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                        Container(
                            height: 80,
                            width: 150,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.home, size: 18),
                              label: Text("Bán Hàng"),
                            )),
                        Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                        Container(
                            height: 80,
                            width: 150,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.home, size: 18),
                              label: Text("Sản Phẩm"),
                            )),
                      ],
                    ),

                  ])),
    ]));
  }
}
