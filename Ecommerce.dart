import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Assignment4 extends StatefulWidget {
  Assignment4() : super();

  @override
  _Assignment4State createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  final List imgList = [
    'assets/macbook.jpg',
    'assets/macbookpro.jpg',
    'assets/note20.jpg',
  ];
  List<dynamic> lst = ["Macbook Air", "Macbook Pro", "Note20 altra"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecommerce App Ui"),
        actions: [
          ElevatedButton(onPressed: () {}, child: Icon(Icons.notifications))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Items"),
                    SizedBox(
                      height: 50,
                      width: 250,
                    ),
                    Text("View More"),
                  ],
                ))
              ],
            ),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 300,
                  child: new Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: [
                          Center(
                            child: Image.network(
                              imgList[index],
                              fit: BoxFit.fill,
                            ),
                          ),
                          Row(
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.only(top: 150, left: 20),
                                  //width: 90,
                                  // height: 90,
                                  //color: Colors.white,
                                  child: Text(" ${lst[index]}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.only(top: 180, left: 20),

                                  //width: 90,
                                  // height: 90,
                                  //color: Colors.white,

                                  child: Text("**** 5Rs (20 Reviews)",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                    itemCount: 3,
                    viewportFraction: 0.7,
                    scale: 0.8,
                    itemHeight: 500.0,
                    itemWidth: 600.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Most Category",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 300,
                  child: new Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: [
                          Center(
                            child: Icon(Icons.leave_bags_at_home_rounded)
                          ),
                          Row(
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.only(top: 150, left: 20),
                                  //width: 90,
                                  // height: 90,
                                  //color: Colors.white,
                                  child: Text(" ${lst[index]}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          
                        ],
                      );
                    },
                    itemCount: 3,
                    viewportFraction: 0.7,
                    scale: 0.8,
                    itemHeight: 500.0,
                    itemWidth: 600.0,
                  ),
                ),
              ],
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Row(
                children: [
                  Container(
                    child: Icon(Icons.home),
                  ),
                  SizedBox(
                    height: 170,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget abc(var image) {
  return Container(
      child: Row(
    children: [
      Container(
        child: Image.network(image),
        width: 400,
        height: 200,
//       height: MediaQuery.of(context).size.height),
        // height: 50,
      )
    ],
  ));
}
