import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: roundTab,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

/* 
BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Color(0xFF20D994)) */

  DefaultTabController get roundTab => DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 198,
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(72),
            child: Align(
              alignment: Alignment(0, -1),
              child: TabBar(
                  isScrollable: true,
                  indicatorWeight: 0,
                  unselectedLabelColor: Color(0xFF9FA5C0),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.only(left: 8, right: 0),
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 4,
                        color: Color(0xFF646464),
                      ),
                      insets: EdgeInsets.only(left: 0, right: 8, bottom: 4)),
                  tabs: [
                    Tab(
                      child: Container(
                        width: 105,
                        height: 36,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border:
                                Border.all(color: Color(0xFF20D994), width: 0)),
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
                            border:
                                Border.all(color: Color(0xFF20D994), width: 0)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Pickup"),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
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
      ));
}

/*
TabBar(
              isScrollable: true,
              indicatorWeight: 0,
              unselectedLabelColor: Color(0xFF9FA5C0),
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: EdgeInsets.only(left: 8, right: 0),
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 4,
                    color: Color(0xFF646464),
                  ),
                  insets: EdgeInsets.only(left: 0, right: 8, bottom: 4)),
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
              ])
 */

//My Tab Bar Design
/* 
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
*/
