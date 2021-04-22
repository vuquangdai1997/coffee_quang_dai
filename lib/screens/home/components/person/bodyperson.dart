import 'package:CoffeeQuangDai/screens/Login/ListLogin.dart';
import 'package:CoffeeQuangDai/screens/home/components/person/capnhapthongtincanhan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Listperson.dart';
import 'package:CoffeeQuangDai/screens/Login/Thaydoimatkhau.dart';
class Bodyperson extends StatefulWidget {
  @override
  _BodypersonState createState() => _BodypersonState();
}
class _BodypersonState extends State<Bodyperson> {
  Person person;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                   width: double.infinity,
                   height: 200,

                    decoration: BoxDecoration(
                        image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/background.jpg'),
                      )
              ),
            ),
            Padding(padding:EdgeInsets.symmetric(vertical: 20, horizontal: 10)),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text('Tên ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                      Expanded(
                        //
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // Text('${person.Name}',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                              IconButton(
                                icon: Icon(Icons.arrow_forward_outlined),
                                onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context){
                                    return capNhapThongTinCaNhan();
                                  }));
                                },
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(padding:EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
                  Row(

                    children: [
                      Expanded(
                        child: Text('Tên đăng nhập ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              //child: Text('${Login.Tendangnhap}',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                              IconButton(
                                icon: Icon(Icons.arrow_forward_outlined),
                                onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context){
                                    return capNhapThongTinCaNhan();
                                  }));
                                },
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(padding:EdgeInsets.symmetric(vertical: 20, horizontal: 10)),
                  Row(

                    children: [
                      Expanded(
                        child: Text('Giới tính ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                      // Expanded(
                      //     child: Text('${person.Gioitinh}',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                      // )
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(Icons.arrow_forward_outlined),
                                onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context){
                                    return capNhapThongTinCaNhan();
                                  }));
                                },
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(padding:EdgeInsets.symmetric(vertical: 20, horizontal: 10)),
                  Row(

                    children: [
                      Expanded(
                        child: Text('Ngày sinh ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                      // Expanded(
                      //     child: Text('${person.Ngaysinh}',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                      // )
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  icon: Icon(Icons.arrow_forward_outlined),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return capNhapThongTinCaNhan();
                                        }));
                                  }
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(padding:EdgeInsets.symmetric(vertical: 20, horizontal: 10)),
                  Row(

                    children: [
                      Expanded(
                        child: Text('Số điện thoại ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                      // Expanded(
                      //     child: Text('${person.sdt}',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                      // ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(Icons.arrow_forward_outlined),
                                onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context){
                                    return capNhapThongTinCaNhan();
                                  }));
                                },
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(padding:EdgeInsets.symmetric(vertical: 20, horizontal: 10)),
                  Row(

                    children: [
                      Expanded(
                        child: Text('Email ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                      // Expanded(
                      //     child: Text('${person.email}',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                      // )
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(Icons.arrow_forward_outlined),
                                onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context){
                                    return capNhapThongTinCaNhan();
                                  }));
                                },
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(padding:EdgeInsets.symmetric(vertical: 20, horizontal: 10)),
                  Row(

                    children: [
                      Expanded(
                        child: Text('Địa Chỉ ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                      // Expanded(
                      //     child: Text('${person.diachi}',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                      // )
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(Icons.arrow_forward_outlined),
                                onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context){
                                    return capNhapThongTinCaNhan();
                                  }));
                                },
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            MaterialButton(
                child:Text('Thiết lập Tài Khoản',textAlign:TextAlign.left,) ,
                onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                          return  thayDoiMatKhau();
                      }));
                })
          ],
        )
        ),
    );
  }
}
