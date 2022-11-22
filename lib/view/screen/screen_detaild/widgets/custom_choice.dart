import 'package:arvension_ui_test/controller/detailcontroller.dart';
import 'package:arvension_ui_test/view/style/style.dart';
import 'package:flutter/material.dart';

class CustomChoice extends StatefulWidget {
  CustomChoice({
    super.key,
  });

  @override
  State<CustomChoice> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomChoice> {
  int? defaultChoiceIndex;

  @override
  void initState() {
 
    super.initState();
    defaultChoiceIndex = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(detailList.length, (index) {
        return ChoiceChip(
          labelPadding:const EdgeInsets.symmetric(horizontal: 25,vertical: 5),

          label: Text(detailList[index].title,
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
          padding:const EdgeInsets.symmetric(horizontal: 10),
        );
      }),
    );
  }
}
