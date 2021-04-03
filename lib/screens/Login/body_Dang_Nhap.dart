import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'singout.dart';
import 'package:CoffeeQuangDai/constants.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/background.jpg',
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Expanded(
                    child: MaterialButton(
                      child: Text(
                        'Mang về ',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      color: Colors.lime,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return Login();
                            }));
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 15)),
                  Expanded(
                    child: MaterialButton(
                      child: Text(
                        'Giao tận nơi',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      color: Colors.lime,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return Khaithongtin();
                            }));
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 15)),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 420,
            height: 150,
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow.withOpacity(0.3),
                
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Padding(
                    child:  Text('Giảm giá tất cả các sản phẩm từ ngày 3/1 - 4/1', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    padding: EdgeInsets.only(left: 15),
                  ),
                  Padding(
                    child:  Text('Khuyến mại khủng lên đến 40 %', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    padding: EdgeInsets.only(left: 15),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15),
                  child:Text('Xin mời Quý khách hàng hãy đến mua ngay', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 420,
            height: 150,
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow.withOpacity(0.3),

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Padding(
                    child:  Text('Giảm giá tất cả các sản phẩm nước uống từ ngày 30/4 - 8/5', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    padding: EdgeInsets.only(left: 15),
                  ),
                  Padding(
                    child:  Text('Khuyến mại khủng lên đến 15 %', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    padding: EdgeInsets.only(left: 15),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15),
                    child:Text('Xin mời Quý khách hàng hãy đến mua ngay', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Expanded(
                    child: MaterialButton(
                      child: Text(
                        'Sing IN',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      color: Colors.cyanAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Login();
                        }));
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 15)),
                  Expanded(
                    child: MaterialButton(
                      child: Text(
                        'Sing UP',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      color: Colors.cyanAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Khaithongtin();
                        }));
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 15)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
