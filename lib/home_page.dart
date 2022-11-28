import 'package:day_27_add_cart/colors/mycolor.dart';
import 'package:day_27_add_cart/model/model_class.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myList = ModelClass.generatedModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'My Cart',
          style: TextStyle(color: Colors.black),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1,color: Colors.grey.withOpacity(0.3))
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                padding: EdgeInsets.all(15),
                child: ListView.separated(
                    itemBuilder: (context, index) => Container(
                          padding: EdgeInsets.fromLTRB(7, 7, 15, 0),
                          width: double.infinity,
                          height: 130,
                          decoration: BoxDecoration(
                              color: whiteContainerClr,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 6,
                                  child: Container(
                                    child: Image.asset(
                                      myList[index].imgUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                              Expanded(
                                  flex: 10,
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              myList[index].titleName,
                                              style: myStyle(
                                                  20,
                                                  FontWeight.bold,
                                                  textClr),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: starClr,
                                                  size: 14,
                                                ),
                                                Text(
                                                  myList[index].rating,
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
                                                  myList[index].location,
                                                  style: myStyle(
                                                      12,
                                                      FontWeight.normal,
                                                      textClr2),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: double.infinity,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Row(
                                                      children: [
                                                        Image.asset(
                                                          'images/taka.png',
                                                          width: 16,
                                                        ),
                                                        Text(
                                                          '${myList[index].totalPrice ?? myList[index].price}',
                                                          style: myStyle(
                                                              20,
                                                              FontWeight.bold,
                                                              textClr),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            width: 28,
                                                            height:
                                                                double.infinity,
                                                            decoration: BoxDecoration(
                                                                color: containerClr,
                                                                borderRadius: BorderRadius.only(
                                                                    topRight: Radius
                                                                        .circular(
                                                                            10),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            10))),
                                                            child: IconButton(
                                                              onPressed: () {
                                                                setState(() {
                                                                  myList[index]
                                                                              .quantity >
                                                                          1
                                                                      ? myList[
                                                                              index]
                                                                          .quantity--
                                                                      : myList[
                                                                              index]
                                                                          .quantity;

                                                                  myList[index]
                                                                              .totalPrice! >
                                                                          myList[index]
                                                                              .price
                                                                      ? myList[
                                                                              index]
                                                                          .totalPrice = myList[index]
                                                                              .totalPrice! -
                                                                          myList[index]
                                                                              .price
                                                                              .toInt()
                                                                      : myList[
                                                                              index]
                                                                          .totalPrice;

                                                                  getTotalPrice();
                                                                });
                                                              },
                                                              icon: Icon(
                                                                Icons.remove,
                                                                color: whiteContainerClr,
                                                                size: 18,
                                                              ),
                                                            )),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            '${myList[index].quantity}',
                                                            style: myStyle(
                                                                14,
                                                                FontWeight.bold,
                                                                textClr),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            width: 28,
                                                            height:
                                                                double.infinity,
                                                            decoration: BoxDecoration(
                                                                color: containerClr,
                                                                borderRadius: BorderRadius.only(
                                                                    topRight: Radius
                                                                        .circular(
                                                                            10),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            10))),
                                                            child: IconButton(
                                                              onPressed: () {
                                                                setState(() {
                                                                  myList[index]
                                                                      .quantity++;

                                                                  myList[index]
                                                                      .totalPrice = myList[
                                                                              index]
                                                                          .price
                                                                          .toInt() *
                                                                      myList[index]
                                                                          .quantity;

                                                                  getTotalPrice();
                                                                });
                                                              },
                                                              icon: Icon(
                                                                Icons.add,
                                                                color: whiteContainerClr,
                                                                size: 18,
                                                              ),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                    separatorBuilder: (_, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: myList.length),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(20),
                color: whiteContainerClr,
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Delivery ',
                                      style: myStyle(
                                          18, FontWeight.bold, textClr),
                                    ),
                                    Text('-----------------------------------------',
                                        style: myStyle(12, FontWeight.normal,
                                            textClr2)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/taka.png',
                                      width: 16,
                                    ),
                                    Text(
                                      '90',
                                      style: myStyle(18, FontWeight.bold,
                                          borderClr),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Total Order ',
                                      style: myStyle(
                                          18, FontWeight.bold, textClr),
                                    ),
                                    Text(
                                      '----------------------------------',
                                      style: myStyle(
                                          12, FontWeight.normal, textClr2),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/taka.png',
                                      width: 16,
                                    ),
                                    Text(
                                      '${totalAprice}',
                                      style: myStyle(18, FontWeight.bold,
                                          borderClr),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: containerClr,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Pay',
                              style: myStyle(18, FontWeight.bold, whiteContainerClr),
                            ),
                           Icon(Icons.attach_money_outlined, color: whiteContainerClr, size: 20,),
                            Text('${totalAprice+90}',
                                style:
                                    myStyle(18, FontWeight.bold, whiteContainerClr))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double totalAprice = 0;
  void getTotalPrice() {
    double total = 0;
    myList.forEach((item) {
      total += item.totalPrice ?? item.price;
    });
    setState(() {
      totalAprice = total;
      print('${totalAprice}');
    });
  }

  @override
  void initState() {
    getTotalPrice();
    super.initState();
  }
}

myStyle(double size, FontWeight weight, Color clr) {
  return TextStyle(fontSize: size, fontWeight: weight, color: clr);
}
