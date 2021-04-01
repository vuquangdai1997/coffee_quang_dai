
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'singout.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              Expanded(

                  child: Column(
                    children: [
                        Image.asset('assets/images/background.jpg',),
                    ],
                  ),
              ),
             Expanded(
                   child:Center(

                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(padding:EdgeInsets.only(left: 15)),
                        Expanded(

                          child: MaterialButton(child: Text('Sing IN', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                            color: Colors.cyanAccent,
                            textColor: Colors.white,
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context){
                              return Login();
                            }));
                            },
                          ),
                        ),
                         Padding(padding:EdgeInsets.only(right: 15)),
                         Expanded(
                           child: MaterialButton(child: Text('Sing UP', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                             color: Colors.cyanAccent,
                             textColor: Colors.white,
                             onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context){
                               return Khaithongtin();
                             }));
                             },
                           ),
                         ),
                         Padding(padding:EdgeInsets.only(right: 15)),
                       ],
                     ),
            ),
         ),
        ],
      ),
    );
  }
}
