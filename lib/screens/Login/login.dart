import 'package:flutter/material.dart';

import '../../constants.dart';
import '../home/home_screen.dart';
import 'ListLogin.dart';
import 'package:CoffeeQuangDai/screens/home/components/person/informationperson.dart';
import 'package:CoffeeQuangDai/manage_store/manage_storehome.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  final controlertaikhoan= TextEditingController();
  final contronlermatkhau = TextEditingController();
  ListLogin _login = ListLogin(taiKhoan: " ", matKhau:" ");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
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
        ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top:40)),
              Text('LOGIN NOW', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.green),),
              Padding(padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20)),

              Container(
                padding: EdgeInsets.all(10),
                child: TextField(

                    decoration: InputDecoration(
                        labelText: 'Tài Khoản',
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 25),
                    controller: controlertaikhoan,
                    onChanged: (text){
                      setState(() {
                        _login.taiKhoan = text;
                      });
                    }
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Mật Khẩu',
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 25),
                    controller: contronlermatkhau,

                    onChanged: (text){
                      setState(() {
                        _login.matKhau = text;
                      });
                    }
                ),
              ),
              Row(
                children:<Widget> [
                  Expanded(
                    child:Container(
                      margin: EdgeInsets.all(25),
                      child: MaterialButton(
                        child: Text('Đăng nhập', style: TextStyle(fontSize: 20.0),),
                        color: Colors.red,
                        textColor: Colors.white,
                        onPressed: () {
                             if(_login.taiKhoan =="KH1" && _login.matKhau =="KH1")
                               {
                                 Navigator.push(context, MaterialPageRoute(builder: (context){
                                   return HomeScreen();
                                 }));
                               }
                             else
                               {
                                   Navigator.push(context, MaterialPageRoute(builder: (context){
                                     return Manage_store();
                                   }));
                               }
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
