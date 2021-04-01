import 'package:CoffeeQuangDai/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:CoffeeQuangDai/discouse/listdiscous.dart';
class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
     @required this.disscouse,
  }) : super(key: key,);
  final Product product;
  final Disscouse disscouse;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            " Coffee Quang Đại",
            style: TextStyle(color: Colors.white),

          ),
          Row(
            children: [
              Container(
                width: 200,
                height: 150,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: Text(product.title,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                        )
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                        child: Text(' Price :${product.price}',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                        )
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                child: Column
                  (crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  Image.asset(
                    product.image,
                    fit: BoxFit.fill,width: 150,
                    height: 150,
                  ),
                ]),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
          Text('Discouse: ', style:  TextStyle(color:Colors.white, fontSize: 20),),
          // ListView.builder(
          //       padding: const EdgeInsets.all(8),
          //       itemCount: disscouses.length,
          //       itemBuilder: (BuildContext context, int index) {
          //       return Container(
          //           height: 50,
          //           child: Container(
          //           //  child: Text('${disscouse}'),
          //           ),
          //       );
          // }
              SizedBox(width: kDefaultPaddin),
            ],
          )
        ],
      ),
    );
  }
}
