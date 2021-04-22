import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:CoffeeQuangDai/screens/home/components/person/listgioitinh.dart';
import 'login.dart';
class Khaithongtin extends StatefulWidget {
  @override
  _capNhapThongTinCaNhanState createState() => _capNhapThongTinCaNhanState();
}

class _capNhapThongTinCaNhanState extends State<Khaithongtin> {
  @override
  Widget build(BuildContext context) {
    final goitinhselected = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(' Khai thông tin',
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10)),
                    Column(
                      children: [
                        TextField(

                          decoration: InputDecoration(
                            hintText: 'Nhập Tên Đăng nhập',
                            border: OutlineInputBorder(
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10)),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Nhập Gmail',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10)),
                    TextField(
                      decoration: InputDecoration(
                        hintText: '  Nhập Số điện thoại',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10)),
                    // TextField(
                    //   decoration: InputDecoration(
                    //     hintText: ' Giới tính',
                    //     border: OutlineInputBorder(),
                    //   ) ,
                    // ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Địa chỉ',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10)),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Mật Khẩu',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10)),
                    MaterialButton(
                        minWidth: 500,
                        height: 40,
                        child: Text(' Xác Nhận'),
                        color: Colors.red,
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder:(context) {
                              return Login();
                          }));
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}