// ignore: unused_import
import 'package:flutter/material.dart';
import 'helper.dart';

class Category extends StatelessWidget {
  final String text;
  final String imagePath;
  final double height;
  final double width;

  Category({this.text, this.imagePath, this.height = 80, this.width = 80});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      margin: EdgeInsets.only(right: 12),
      child: Stack(
        children: [
          Ink.image(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
              child: InkWell(onTap: () {
                print(text);
              })),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 10, bottom: 10),
            child: Text(text,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Nunito",
                    fontSize: 12,
                    fontWeight: FontWeight.w700)),
          )
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String specialProperty;
  final String deliveryTime;
  final double rate;
  final List<String> dishes;

  ProductCard(
      {this.imagePath,
      this.productName = "Unknown",
      this.specialProperty = "Free delivery",
      this.deliveryTime = "30-40",
      this.rate = 2.5,
      this.dishes});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red[100],
      width: 260,
      height: 218,
      margin: EdgeInsets.only(right: 14),
      child: Stack(
        children: [
          Column(children: [
            //Image
            Container(
              height: 140,
              child: Image.asset("assets/featured/pizza.png"),
            ),
            //Text information
            Container(
                alignment: Alignment.centerLeft,
                child: Text(productName,
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 15,
                        fontWeight: FontWeight.w700))),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(" - $rate Excellent (50+)",
                    style: TextStyle(
                        color: mcolor.green2,
                        fontFamily: "Nunito",
                        fontSize: 13,
                        fontWeight: FontWeight.w400))),
            Container(
                alignment: Alignment.centerLeft,
                child: Text("Pizza - Italian - Pasta - Salads",
                    style: TextStyle(
                        color: mcolor.greyText,
                        fontFamily: "Nunito",
                        fontSize: 13,
                        fontWeight: FontWeight.w400))),
            Container(
                alignment: Alignment.centerLeft,
                child: Text("1.7 km away - Free delivery",
                    style: TextStyle(
                        color: mcolor.greyText,
                        fontFamily: "Nunito",
                        fontSize: 13,
                        fontWeight: FontWeight.w400)))
          ]),
          //Folating labels
          //Time
          Container(
            height: 33,
            width: 66,
            margin: EdgeInsets.only(left: 176, top: 122),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Color(0xFF234967).withOpacity(0.15),
                  offset: Offset(0, 2),
                  blurRadius: 4)
            ], color: mcolor.white, borderRadius: BorderRadius.circular(32)),
            child: Column(
              children: [
                Text(deliveryTime,
                    style: TextStyle(
                        color: Color(0xFF2E3E5C),
                        fontFamily: "Nunito",
                        fontSize: 12,
                        fontWeight: FontWeight.w600)),
                Text("mins",
                    style: TextStyle(
                        color: Color(0xFF9FA5C0),
                        fontFamily: "Nunito",
                        fontSize: 9,
                        fontWeight: FontWeight.w400))
              ],
            ),
          ),
          //Promotion
          Container(
            width: 103,
            height: 30,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 12, top: 12),
            decoration: BoxDecoration(
                color: Color(0xFFFF6464),
                borderRadius: BorderRadius.circular(32)),
            child: Text(specialProperty,
                style: TextStyle(
                    color: mcolor.white,
                    fontFamily: "Nunito",
                    fontSize: 12,
                    fontWeight: FontWeight.w700)),
          )
        ],
      ),
    );
  }
}
