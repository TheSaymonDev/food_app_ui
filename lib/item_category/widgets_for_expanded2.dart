import 'package:day_27_add_cart/colors/mycolor.dart';
import 'package:day_27_add_cart/home_page.dart';
import 'package:day_27_add_cart/model/model_class.dart';
import 'package:flutter/material.dart';

class WidgetsForExpanded2 extends StatefulWidget {
  const WidgetsForExpanded2({Key? key}) : super(key: key);

  @override
  State<WidgetsForExpanded2> createState() => _WidgetsForExpanded2State();
}

class _WidgetsForExpanded2State extends State<WidgetsForExpanded2> {

  final myList2=ModelClass.generatedModel();
  var selected=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Container(
           height: double.infinity,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context,index)=>GestureDetector(
                  onTap: (){
                    setState(() {
                      selected=index;
                    });
                  },
                  child: Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width *.30,
                    decoration: BoxDecoration(
                      color: whiteContainerClr,
                      borderRadius: BorderRadius.circular(15),
                      border: selected==index ? Border.all(width: 2, color: borderClr) : Border.all(width: 0, color: Colors.transparent)
                    ),
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: double.infinity,
                          child: Image(image: AssetImage(myList2[index].imgUrl),fit: BoxFit.cover,),
                        )),
                        Expanded(
                            flex: 1,
                            child: Container(
                          child: Text(myList2[index].titleName, style: myStyle(13, FontWeight.bold, textClr),),
                        ))
                      ],
                    ),
                  ),
                ),
                separatorBuilder: (_, index)=>SizedBox(width: 10,),
                itemCount: myList2.length),
          ),
        ),
        Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            child: Text(
              'Result (40)',
              style: myStyle(12, FontWeight.normal, textClr2),
            )),
        Expanded(
          flex: 8,
          child: Container(
           height: double.infinity,
            width: double.infinity,
            child: GridView.count(
              childAspectRatio: 0.7,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              crossAxisCount: 2,
              children: List.generate(
                  myList2.length, (index) => Container(
                padding: EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteContainerClr,
                ),
                child: Column(
                  children: [
                    Expanded(flex: 1,child: Container(
                      padding: EdgeInsets.all(5),
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(myList2[index].imgUrl), fit: BoxFit.cover)
                      ),
                    )),
                    Expanded(flex: 1,child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(myList2[index].titleName, style: myStyle(15, FontWeight.bold, textClr),),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: starClr,
                                size: 14,
                              ),
                              Text(
                                myList2[index].rating,
                                style: myStyle(
                                    12,
                                    FontWeight.normal,
                                    textClr2),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.location_on,
                                color: lacationClr,
                                size: 14,
                              ),
                              Text(
                                myList2[index].location,
                                style: myStyle(
                                    12,
                                    FontWeight.normal,
                                    textClr2),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'images/taka.png',
                                    width: 16,
                                  ),
                                  Text(
                                    '${myList2[index].price}',
                                    style: myStyle(
                                        20,
                                        FontWeight.bold,
                                        textClr),
                                  ),
                                ],
                              ),
                              Container(
                               padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: textClr,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                                ),
                                child: Icon(Icons.add_shopping_cart, color: whiteContainerClr, size: 18,),
                              )
                            ],
                          )
                          
                        ],
                      ),
                    )),
                  ],
                ),
              ))
            ),
          ),
        )
      ],
    );
  }
}
