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
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 198 - MediaQuery.of(context).padding.top,
              backgroundColor: mcolor.white,
              elevation: 0,
              flexibleSpace: appBarBody(context),
              bottom: homePageTabBar(),
            ),
            backgroundColor: mcolor.white,
            body: TabBarView(
              children: [deliveryPage(context), pickupPage(context)],
            ),
          ),
        ));
  }
}
