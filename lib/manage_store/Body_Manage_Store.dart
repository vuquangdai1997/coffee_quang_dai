import 'package:flutter/material.dart';
class Body_Manage_Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueAccent,
        width: 150,
        height: 1000,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                 Container(
                   width: 200,
                   child:ElevatedButton.icon(
                       onPressed: () {
                       },
                       icon: Icon(Icons.home, size: 18),
                       label: Text("Trang chủ"),
                     )
                    ),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                 Text(
                'Quản lý hệ thống',
               style: TextStyle(fontSize:  20, color: Colors.white, fontWeight: FontWeight.bold  ),
               ),
               Container(
                width: 200,
                child:ElevatedButton.icon(
                  onPressed: () {
                  },
                  icon: Icon(Icons.home, size: 18),
                  label: Text("Nhập Hàng"),
                )
              ),
              Container(
                width: 200,
                child:ElevatedButton.icon(
                  onPressed: () {
                  },
                  icon: Icon(Icons.home, size: 18),
                  label: Text("Xuất Hàng"),
                )
            ),
            Container(
                width: 200,
                child:ElevatedButton.icon(
                  onPressed: () {
                  },
                  icon: Icon(Icons.home, size: 18),
                  label: Text("Phân Hệ Kho"),
                )
            ),
            Container(
                width: 200,
                child:ElevatedButton.icon(
                  onPressed: () {
                  },
                  icon: Icon(Icons.home, size: 18),
                  label: Text("Nhân viên"),
                )
            ),
            Text(
              'Quản lý Appmobile',
              style: TextStyle(fontSize:  20, color: Colors.white, fontWeight: FontWeight.bold  ),
            ),
            Container(
                width: 200,
                child:ElevatedButton.icon(
                  onPressed: () {
                  },
                  icon: Icon(Icons.home, size: 18),
                  label: Text("Sự Kiện"),
                )
            ),
            Container(

                width: 200,
                child:ElevatedButton.icon(
                  onPressed: () {
                  },
                  icon: Icon(Icons.home, size: 18),
                  label: Text("Bán Hàng "),
                )
             ),
            Container(
                width: 200,
                child:ElevatedButton.icon(
                  onPressed: () {
                  },
                  icon: Icon(Icons.home, size: 18),
                  label: Text("TK chi nhánh "),
                )
            ),
               ],
             )
    );
  }
}
