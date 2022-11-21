import 'package:arvension_ui_test/controller/choiceclipcontroller.dart';
import 'package:arvension_ui_test/view/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCips extends StatefulWidget {
  CustomCips({
    super.key,
  });

  @override
  State<CustomCips> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomCips> {
  int? defaultChoiceIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    defaultChoiceIndex = 0;
  }

  var _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: List.generate(choicesList.length, (index) {
        return ChoiceChip(
          labelPadding: EdgeInsets.all(2.0),
          avatar: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(choicesList[index].assetImage),
              ),
            ),
          ),

          label: Text(choicesList[index].title,
              style: TextStyle(
                  color: defaultChoiceIndex == index ? white : black,
                  fontWeight: FontWeight.bold)),

          selected: defaultChoiceIndex == index,
          selectedColor: lightBrown,
          onSelected: (value) {
            setState(() {
              defaultChoiceIndex = value ? index : defaultChoiceIndex;
            });
          },
          // backgroundColor: color,
          elevation: 1,
          padding: EdgeInsets.symmetric(horizontal: 10),
        );
      }),
    );
  }
}
