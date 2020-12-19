import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

/*****************************************************************************/

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
    child: Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 36,
        margin: EdgeInsets.only(bottom: 18, left: 10),
        child: TabBar(
          isScrollable: true,
          indicatorWeight: 1,
          labelColor: Color(0xffffffff),
          unselectedLabelColor: Color(0xff9FA5C0),
          labelStyle: selectedTab,
          unselectedLabelStyle: unselectedTab,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(
              color: mcolor.green2, borderRadius: BorderRadius.circular(32)),
          tabs: homePageTabs(),
        ),
      ),
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
            child: ListView(
              children: [
                Container(height: 200, color: Colors.red[100]),
                Container(height: 200, color: Colors.blue[100]),
                Container(height: 200, color: Colors.red[100])
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
