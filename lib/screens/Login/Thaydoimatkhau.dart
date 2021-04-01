import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:CoffeeQuangDai/screens/Login/ListLogin.dart';
import 'package:CoffeeQuangDai/screens/home/home_screen.dart';
class thayDoiMatKhau extends StatefulWidget {
  @override
  _thayDoiMatKhauState createState() => _thayDoiMatKhauState();
}

class _thayDoiMatKhauState extends State<thayDoiMatKhau> {
  ListLogin _listLogin ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' Cài Đặt Tài Khoản'),
          centerTitle: true,
        ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Text('${_listLogin.taiKhoan}'),
              Text(' Thay đổi mật khẩu',style:  TextStyle( fontSize: 20),),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextField(
                decoration: InputDecoration(
                  hintText: ' Nhập mật Khẩu cũ',
                  border: OutlineInputBorder(),
                ) ,
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextField(
                decoration: InputDecoration(
                  hintText: ' Mật khẩu mới',
                  border: OutlineInputBorder(),
                ) ,
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextField(
                decoration: InputDecoration(
                  hintText: ' Nhập Lại Mật Khẩu',
                  border: OutlineInputBorder(),
                ) ,
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              MaterialButton(
                minWidth: 500,
                color: Colors.red,
                child: Text( ' Xác Nhận '),
                  onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return HomeScreen();
                      }));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
