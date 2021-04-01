import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'listgioitinh.dart';
import 'informationperson.dart';
class capNhapThongTinCaNhan extends StatefulWidget {
  @override
  _capNhapThongTinCaNhanState createState() => _capNhapThongTinCaNhanState();
}

class _capNhapThongTinCaNhanState extends State<capNhapThongTinCaNhan> {
  @override
  Widget build(BuildContext context) {
    final goitinhselected = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(' Cập Nhập Thông Tin Cá Nhân',
          style: TextStyle(
           fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
         child: Container(
           padding:EdgeInsets.only(top: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10)),
                    TextField(
                      decoration: InputDecoration(
                        hintText: ' xin moi thay dổi tên',
                        border: OutlineInputBorder(),
                      ) ,
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10)),
                    TextField(
                      decoration: InputDecoration(
                        hintText: ' Gmail',
                        border: OutlineInputBorder(),
                      ) ,
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10)),
                    TextField(
                      decoration: InputDecoration(
                        hintText: ' Số điện thoại',
                        border: OutlineInputBorder(),
                      ) ,
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10)),
                    TextField(
                      decoration: InputDecoration(
                        hintText: ' Ngày Sinh',
                        border: OutlineInputBorder(),
                      ) ,
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10)),
                    DropDownField(
                        controller: goitinhselected,
                        hintText: ' Giới tính',
                        enabled:  true,
                        items:Gioitinh
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10)),
                    MaterialButton(
                        minWidth: 500,
                        height: 40,
                        child: Text( 'Cập Nhập Thông tin'),
                        color: Colors.red,
                        onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return InformationPerson();
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
