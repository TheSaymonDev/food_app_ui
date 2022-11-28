import 'package:day_27_add_cart/colors/mycolor.dart';
import 'package:day_27_add_cart/home_page.dart';
import 'package:flutter/material.dart';

class WidgetsForExpanded1 extends StatelessWidget {
  const WidgetsForExpanded1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Your Location', style: myStyle(13, FontWeight.normal, textClr2),),
                          Icon(Icons.keyboard_arrow_down_outlined, size: 14, color: textClr2,)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on, size: 16, color: borderClr,),
                          Text('Dhaka, Bangladesh', style: myStyle(14, FontWeight.bold, textClr),)
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: textClr2)),
                        child: Icon(
                          Icons.search,
                          color: textClr,
                        ),
                      ),
                      SizedBox(width: 15,),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1, color: textClr2)),
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: textClr,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),



              Row(
                children: [
                  Text('Let\'s finds the best\nfood around you', style: myStyle(25, FontWeight.bold, textClr),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Find by Category', style: myStyle(16, FontWeight.bold, textClr),),
                  Text('See All', style: myStyle(12, FontWeight.bold, borderClr),)
                ],
              ),
            ],
          ),
          Positioned(
              right: -1,
              top: -5,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.red),
                child: Text('3'),
              ))

        ],
      ),
    );
  }
}
