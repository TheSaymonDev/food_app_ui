import 'package:day_27_add_cart/home_page.dart';
import 'package:day_27_add_cart/item_category/item_category_page.dart';
import 'package:day_27_add_cart/splash_screen/main_page_demo.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPageDemo(),
    );
  }
}
