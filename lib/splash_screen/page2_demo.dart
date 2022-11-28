import 'package:day_27_add_cart/colors/mycolor.dart';
import 'package:flutter/material.dart';

class Page2Demo extends StatelessWidget {
  const Page2Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: containerClr,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Expanded(flex: 8,child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/three.png'), fit: BoxFit.cover)
                  ),
                )),
                Expanded(flex: 6,child: Container())
              ],
            ),
          )
        ],
      ),
    );
  }
}
