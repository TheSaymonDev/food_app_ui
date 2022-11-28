import 'package:day_27_add_cart/colors/mycolor.dart';
import 'package:day_27_add_cart/home_page.dart';
import 'package:day_27_add_cart/item_category/Widgets_for_expanded1.dart';
import 'package:day_27_add_cart/item_category/bottom_nav_bar.dart';
import 'package:day_27_add_cart/item_category/widgets_for_expanded2.dart';
import 'package:flutter/material.dart';

class ItemCategoryPage extends StatefulWidget {
  const ItemCategoryPage({Key? key}) : super(key: key);

  @override
  State<ItemCategoryPage> createState() => _ItemCategoryPageState();
}

class _ItemCategoryPageState extends State<ItemCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 5),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.only(bottom: 15),
                  width: double.infinity,
                  child: WidgetsForExpanded1(),
                ),
              ),

              Expanded(
                flex: 9,
                child: Container(
                  child: WidgetsForExpanded2(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
