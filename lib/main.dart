import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'helper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MColor mcolor = new MColor();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: mcolor.white,
          body: Column(
            children: [
              //HEADER
              Container(
                height: 198,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    //Spacing
                    Container(
                        height: 80, width: MediaQuery.of(context).size.width),
                    //Body
                    Container(
                        height: 44,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            //ListView
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
                                      child: Text(
                                        "New York City",
                                        style: TextStyle(
                                            color: Color(0xff2E3E5C),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Nunito"),
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
                    //TabBar
                    Container(
                      height: 72,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //Delivery TAB
                          Container(
                            height: 36,
                            width: 105,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: mcolor.green2),
                            alignment: Alignment.center,
                            child: Text(
                              "Delivery",
                              style: selectedTab,
                            ),
                          ),
                          //Pickup TAB
                          Container(
                            height: 36,
                            width: 94,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: mcolor.grey),
                            margin: EdgeInsets.only(left: 8),
                            alignment: Alignment.center,
                            child: Text("Pickup", style: unselectedTab),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //SPACING
              Container(
                height: 8,
                width: MediaQuery.of(context).size.width,
                color: mcolor.grey,
              ),

              //BODY
              Container(width: MediaQuery.of(context).size.width),
            ],
          ),
        ));
  }
}

/* DefaultTabController get roundTab => DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 198,
          actions: [
            Container(
              child: Text("Your current location"),
              color: Colors.grey,
              width: 130,
              height: 44,
            )
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
              //isScrollable: true,
              indicatorWeight: 0,
              unselectedLabelColor: Color(0xFF9FA5C0),
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Color(0xFF20D994)),
              tabs: [
                Tab(
                  child: Container(
                    width: 105,
                    height: 36,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        border: Border.all(color: Color(0xFF20D994), width: 0)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Delivery"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 94,
                    height: 36,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        border: Border.all(color: Color(0xFF20D994), width: 0)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Pickup"),
                    ),
                  ),
                ),
              ]),
        ),
        body: TabBarView(children: [
          Column(children: [
            Divider(thickness: 8, color: Color(0xFFF4F5F7)),
            Icon(Icons.apps)
          ]),
          Column(children: [
            Divider(thickness: 8, color: Color(0xFFF4F5F7)),
            Icon(Icons.movie)
          ])
        ]),
      )); */
