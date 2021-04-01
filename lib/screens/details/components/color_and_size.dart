import 'package:CoffeeQuangDai/models/product.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class ColorAndSize extends StatefulWidget {
  @override
  _ColorAndSizeState createState() => _ColorAndSizeState();
}
class _ColorAndSizeState extends State<ColorAndSize> {
  bool checkboxvaluenho = false;
  bool checkboxvaluevua = false;
  bool checkboxvaluelon = false;
  @override
  Widget build(BuildContext context) {
    return Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Text (' Size', style: TextStyle( fontSize: 15, fontWeight: FontWeight.bold),),
                Container(
                  padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(value: checkboxvaluenho, onChanged:  ( bool value)
                        {
                            setState(() {
                                        checkboxvaluenho = value;
                            });
                        }
                        ),
                        Text( ' Size nhỏ'),
                      ],
                    ),
                ),
              Container(
                child: Row(
                  children: [
                    Checkbox(value: checkboxvaluevua, onChanged:  ( bool value)
                    {
                      setState(() {
                        checkboxvaluevua = value;
                      });
                    }
                    ),
                    Text( ' Size Vừa '),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Checkbox(value: checkboxvaluelon, onChanged:  ( bool value)
                    {
                      setState(() {
                        checkboxvaluelon = value;
                      });
                    }
                    ),
                    Text( ' Size lớn'),
                  ],
                ),
              )
            ],
          ),
    );
  }
}

