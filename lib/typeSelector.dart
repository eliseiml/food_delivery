import 'package:flutter/material.dart';
import 'helper.dart';

// ignore: must_be_immutable
class SelectorTab extends StatelessWidget {
  double height = 10.0;
  double width = 10.0;
  BorderRadius borderRadius = BorderRadius.circular(24);
  Color unselectedBackgroundColor;
  Color selectedBackgroundColor;
  String label = "";
  TextStyle selectedLabelStyle;
  TextStyle unselectedLabelStyle;
  EdgeInsetsGeometry margin;
  bool isSelected = false;
  void Function(int index) onSelected;
  int index;

  SelectorTab(
      {double height,
      double width,
      BorderRadius borderRadius,
      String label,
      TextStyle selectedLabelStyle,
      TextStyle unselectedLabelStyle,
      Color unselectedBackgroundColor,
      Color selectedBackgroundColor,
      EdgeInsetsGeometry margin,
      bool isSelected,
      Function(int index) onSelected,
      @required int index}) {
    this.height = height;
    this.width = width;
    this.borderRadius = borderRadius;
    this.unselectedBackgroundColor = unselectedBackgroundColor;
    this.selectedBackgroundColor = selectedBackgroundColor;
    this.label = label;
    this.selectedLabelStyle = selectedLabelStyle;
    this.unselectedLabelStyle = unselectedLabelStyle;
    this.margin = margin;
    this.isSelected = isSelected;
    this.onSelected = onSelected;
    this.index = index;
  }

  Widget build(BuildContext context) {
    if (isSelected) {
      return Container(
        margin: margin,
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: borderRadius, color: selectedBackgroundColor),
        child: TextButton(
          child: Text(label, style: selectedLabelStyle),
          onPressed: () {
            onSelected(index);
          },
        ),
      );
    } else {
      return Container(
        margin: margin,
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: borderRadius, color: unselectedBackgroundColor),
        child: TextButton(
          child: Text(label, style: unselectedLabelStyle),
          onPressed: () {
            onSelected(index);
          },
        ),
      );
    }
  }
}

// ignore: must_be_immutable
class TypeSelector extends StatefulWidget {
  int length;
  TypeSelector({int length = 1}) {
    this.length = length;
  }

  @override
  _TypeSelectorState createState() => _TypeSelectorState(length);
}

class _TypeSelectorState extends State<TypeSelector> {
  int length, value = 0;
  List<bool> tabs = [true];
  bool tab1 = true, tab2 = false;

  void update() {
    tabs.fillRange(0, tabs.length, false);
    tabs[value] = true;
  }

  _TypeSelectorState(int length) {
    this.length = length;
    for (int i = 0; i < length; i++) {
      tabs.add(false);
    }
    tabs[0] = true;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 36,
        margin: EdgeInsets.only(bottom: 18, left: 24),
        child: Row(
          children: [
            //Delivery button
            SelectorTab(
              height: 36,
              width: 105,
              label: "Delivery",
              unselectedBackgroundColor: mcolor.grey,
              selectedBackgroundColor: mcolor.green2,
              selectedLabelStyle: selectedTab,
              unselectedLabelStyle: unselectedTab,
              borderRadius: BorderRadius.circular(24),
              index: 0,
              isSelected: tabs[0],
              onSelected: (index) {
                print("Delivery");
                setState(() {
                  value = index;
                  update();
                });
              },
            ),
            //Pickup button
            SelectorTab(
              height: 36,
              width: 94,
              label: "Pickup",
              unselectedBackgroundColor: mcolor.grey,
              selectedBackgroundColor: mcolor.green2,
              selectedLabelStyle: selectedTab,
              unselectedLabelStyle: unselectedTab,
              borderRadius: BorderRadius.circular(24),
              margin: EdgeInsets.only(left: 8),
              isSelected: tabs[1],
              index: 1,
              onSelected: (index) {
                print("Pickup");
                setState(() {
                  value = index;
                  update();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
