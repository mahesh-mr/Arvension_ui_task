import 'package:arvension_ui_test/view/style/style.dart';
import 'package:flutter/material.dart';


class CaroscelCustom extends StatefulWidget {
  const CaroscelCustom({super.key});

  @override
  State<CaroscelCustom> createState() => _CaroscelCustomState();
}

class _CaroscelCustomState extends State<CaroscelCustom> {
  var selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return LimitedBox(
            maxHeight: 350,
            child: Column(
              children: [
                Container(
                  color: brown,
                  height: selectedindex == index ? 100 : 80,
                  // child: Image.asset(category.image),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
