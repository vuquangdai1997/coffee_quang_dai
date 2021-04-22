import 'package:flutter/material.dart';
import '../../constants.dart';
import '../home/home_screen.dart';
import 'ListLogin.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:CoffeeQuangDai/manage_store/manage_storehome.dart';
//import 'package:CoffeeQuangDai/screens/home/components/person/informationperson.dart';
//import 'package:CoffeeQuangDai/manage_store/manage_storehome.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  var matkhau;
  var taikhoan;
  //ListLogin _login = ListLogin(taikhoan: " ", matKhau:" ");
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
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 25),
                //    controller: controlertaikhoan,
                    onChanged: (text){
                      setState(() {
                       taikhoan = text;
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  // controller: contronlermatkhau,
                    onChanged: (text){
                      setState(() {
                        matkhau = text;
                      });
                    }
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 15)),
                SizedBox(
                  width: 380,
                  height: 50,
                  child:Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  child: MaterialButton(
                    child: Text('Đăng nhập', style: TextStyle(fontSize: 20.0),),
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                  ),
                    textColor: Colors.white,
                    onPressed: () {
                   setState(() {
                      String myUrl = "http://localhost:8080/Logkh";
                      http.post(myUrl,
                      body: {
                      "makh": taikhoan,
                      "matkhau": matkhau,
                      }

                      ).then((response) {
                      if(response.statusCode==200){
                      Map<String, dynamic> maprse = json.decode(response.body);
                      if(maprse["access"]==1) {
                          print("dung");
                          Navigator.of(context).push(
                          new MaterialPageRoute(
                          builder: (BuildContext context) => new HomeScreen(),
                          ));

                      }
                      //thongbao = "Bạn nhập sai tài khoản / mật khẩu";
                      }else{
                        Navigator.of(context).push(
                            new MaterialPageRoute(
                              builder: (BuildContext context) => new Manage_store(),
                            ));
                      //thongbao = "Bạn nhập sai tài khoản / mật khẩu";
                      }
                      }
                      );
                      });
                      },
                  ),
                  )
                )
                ],
              )
          ),
        ),
    );
  }
}
