import 'package:arvension_ui_test/view/screen/screen_main/widgets/screen2.dart';
import 'package:arvension_ui_test/view/screen/screen_main/widgets/screen3.dart';
import 'package:arvension_ui_test/view/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentSelectedIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    Screen2(),
    Screen3(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    //    backgroundColor: white,
        body: _pages[_currentSelectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: white,
            showSelectedLabels: true,


            selectedItemColor: lightBrown,
            unselectedItemColor: grey,
            currentIndex: _currentSelectedIndex,
            // ignore: non_constant_identifier_names
            onTap: (NewIndex) {
              setState(() {
                _currentSelectedIndex = NewIndex;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house_alt),
                activeIcon: Icon(CupertinoIcons.house_fill),
                label: ".",
              ),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.heart),
                  activeIcon: Icon(CupertinoIcons.heart_solid),
                  label: '.'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.square_grid_2x2),
                  activeIcon: Icon(CupertinoIcons.square_grid_2x2_fill),
                  label: '.'),
            ]),
      ),
    );
  }
}
