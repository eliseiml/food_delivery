import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'typeSelector.dart';
import 'content.dart';

class MColor {
  Color white = Color(0xffffffff);
  Color grey = Color(0xffF4F5F7);
  Color greyText = Color(0xff9FA5C0);
  Color green2 = Color(0xff20D994);
}

MColor mcolor = new MColor();

String location = "Choose your location";

TextStyle selectedTab = TextStyle(
    color: Color(0xffffffff),
    fontSize: 15,
    fontWeight: FontWeight.w700,
    fontFamily: "Nunito");

TextStyle unselectedTab = TextStyle(
    color: Color(0xff9FA5C0),
    fontSize: 15,
    fontWeight: FontWeight.w600,
    fontFamily: "Nunito");

TextStyle searchTextStyle = TextStyle(
    color: Color(0xff9FA5C0),
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: "Nunito");

/*Code*/

Widget spacing8px() {
  return Container(height: 8, color: mcolor.grey);
}

void locationBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    builder: (BuildContext context) {
      return Container(
        height: 216,
        child: Column(
          children: [
            //Your location
            Container(
              height: 63,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 24),
              child: Text("Your location",
                  style: TextStyle(
                      color: Color(0xff2E3E5C),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Nunito")),
            ),
            //Spacing
            Container(height: 2, color: Color(0xffe3e3e3)),
            //Search
            Container(
              height: 65,
              child: Row(
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    margin: EdgeInsets.only(left: 24),
                    child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset("assets/icons/search3x.png")),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Text("Search somewhere else",
                        style: TextStyle(
                            color: Color(0xff1FCC79),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Nunito")),
                  )
                ],
              ),
            ),
            //Spacing
            Container(
                height: 2,
                margin: EdgeInsets.only(left: 24, right: 24),
                color: Color(0xfff2f2f2)),
            //Current location & select
            Container(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                        width: 18,
                        height: 18,
                        margin: EdgeInsets.only(left: 24),
                        child: FittedBox(
                            fit: BoxFit.fill,
                            child:
                                Image.asset("assets/icons/navigation3x.png"))),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text("Current location",
                          style: TextStyle(
                              color: Color(0xff2E3E5C),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Nunito")),
                    ),
                    Expanded(
                      child: Container(
                          alignment: Alignment.centerRight,
                          height: 16,
                          margin: EdgeInsets.only(right: 24),
                          child: Text("Select",
                              style: TextStyle(
                                  color: Color(0xff1FCC79),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Nunito"))),
                    )
                  ],
                ))
          ],
        ),
      );
    },
  );
}
//onPressed: () => Navigator.pop(context),

//AppBar middle part
Widget appBarBody(BuildContext context) {
  return Column(
    children: [
      //Spacing
      Container(height: 80, width: MediaQuery.of(context).size.width),
      //Body
      Container(
          height: 44,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              //Location Selector
              Expanded(
                  child: Container(
                height: 44,
                margin: EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      child: Text(
                        "Your location",
                        style: TextStyle(
                            color: Color(0xff9FA5C0),
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Nunito"),
                      ),
                    ),
                    Container(
                        height: 22,
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                location,
                                style: TextStyle(
                                    color: Color(0xff2E3E5C),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Nunito"),
                              ),
                            ),
                            Container(
                              width: 22,
                              height: 22,
                              margin: EdgeInsets.only(left: 8),
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: IconButton(
                                    icon: Image.asset(
                                      "assets/icons/arrow3x.png",
                                    ),
                                    onPressed: () {
                                      locationBottomSheet(context);
                                    }),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              )),
              //IconAccount
              Container(
                height: 44,
                width: 44,
                margin: EdgeInsets.only(right: 24),
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Image.asset("assets/icons/profile.png"),
                  onPressed: () {
                    print("Account pressed");
                  },
                ),
              )
            ],
          )),
    ],
  );
}

//TabBar design description
PreferredSizeWidget homePageTabBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(72),
    child: TypeSelector(
      length: 2,
    ),
  );
}

//Tabs design description
List<Widget> homePageTabs() {
  return <Widget>[
    Container(
      //margin: EdgeInsets.only(bottom: 18),
      width: 105,
      height: 36,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: Color(0xFF20D994), width: 1)),
      child: Align(
        alignment: Alignment.center,
        child: Text("Delivery"),
      ),
    ),
    Container(
      //margin: EdgeInsets.only(bottom: 18),
      width: 94,
      height: 36,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: Color(0xFF20D994), width: 1)),
      child: Align(
        alignment: Alignment.center,
        child: Text("Pickup"),
      ),
    )
  ];
}

Widget searchField(BuildContext context) {
  return Container(
    height: 46,
    margin: EdgeInsets.only(left: 24, right: 10, top: 18),
    child: Row(
      children: [
        //Input field
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 18, top: 14, bottom: 14),
            decoration: BoxDecoration(
                color: mcolor.grey, borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Image.asset("assets/icons/search_grey3x.png",
                    width: 18, height: 18),
                Expanded(
                  child: Container(
                    height: 46,
                    alignment: Alignment.center,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 16.5, left: 12),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintStyle: searchTextStyle,
                        hintText: "Dishes, restaurants and cusines",
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        //Filter button
        IconButton(
          alignment: Alignment.centerRight,
          icon: Image.asset("assets/icons/union3x.png", width: 18, height: 18),
          onPressed: () {
            print("search filter");
          },
        )
      ],
    ),
  );
}

Widget categorySelector(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(left: 24, top: 12),
      child: SizedBox(
        height: 80,
        //width: MediaQuery.of(context).size.width - 10,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Category(imagePath: "assets/images/offers.png", text: "Offers"),
            Category(imagePath: "assets/images/burgers.png", text: "Burgers"),
            Category(imagePath: "assets/images/pizza.png", text: "Pizza"),
            Category(imagePath: "assets/images/sushi.png", text: "Sushi"),
            Category(imagePath: "assets/images/vegan.png", text: "Vegan"),
            Category(imagePath: "assets/images/thai.png", text: "Thai"),
            Category(imagePath: "assets/images/asian.png", text: "Asian"),
            Category(imagePath: "assets/images/indian.png", text: "Indian"),
            Category(imagePath: "assets/images/italian.png", text: "Italian"),
            Category(imagePath: "assets/images/dessert.png", text: "Dessert"),
            Category(imagePath: "assets/images/healthy.png", text: "Healthy"),
            Category(
                imagePath: "assets/images/breakfast.png", text: "Breakfast"),
          ],
        ),
      ));
}

Widget productsView(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(left: 24, top: 12),
      child: SizedBox(
        height: 218,
        //width: MediaQuery.of(context).size.width - 10,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ProductCard(
              productName: "Lombar Pizza",
              rate: 2.0,
              specialProperty: "It's shit",
            ),
            ProductCard(productName: "Burger loft", rate: 4.7),
            ProductCard(
                productName: "Dominos", rate: 5.0, deliveryTime: "10-20"),
            ProductCard(
                productName: "Karas fish", rate: 4.7, deliveryTime: "10-20"),
            ProductCard(
                productName: "Mamas bitch", rate: 4.5, deliveryTime: "50-55"),
            ProductCard(productName: "Hot Dog", rate: 3.1),
            ProductCard(productName: "McDonald's", rate: 4.7),
            ProductCard(productName: "GastroFest", rate: 4.4),
          ],
        ),
      ));
}

//Delivery Page
Widget deliveryPage(BuildContext context) {
  return Center(
    child: Column(
      children: [
        //SPACING
        spacing8px(),

        //BODY
        Container(
          width: MediaQuery.of(context).size.width,
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 240,
            child: Column(
              children: [
                searchField(context),
                categorySelector(context),
                Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 24, top: 26),
                    child: Text(
                      "Featured",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF2E3E5C)),
                    )),
                productsView(context),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

//Pickup Page
Widget pickupPage(BuildContext context) {
  return Column(
    children: [spacing8px(), Text("This is the Pickup page")],
  );
}
