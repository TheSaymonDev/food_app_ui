import 'package:day_27_add_cart/colors/mycolor.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      backgroundColor: whiteContainerClr,
      elevation: 0,
      selectedItemColor: textClr,
      unselectedItemColor: textClr2,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.compass_calibration_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline_sharp), label: ''),
      ],
    );
  }
}
