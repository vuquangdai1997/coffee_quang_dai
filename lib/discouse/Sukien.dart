import 'package:flutter/material.dart';

import '../constants.dart';
class Discous extends StatelessWidget {
  const Discous({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container
    (

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child:SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
               Text('Sự Kiện Khuyến mại',style: TextStyle(color:kPrimaryColor, fontWeight: FontWeight.bold,),),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/background.jpg'),
                    )
                ),


              )
            ],
          ),
        )
    )
    );
  }
}
