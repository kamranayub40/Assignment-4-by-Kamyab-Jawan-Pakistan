// @dart=2.9
import 'dart:collection';

import 'package:flutter/material.dart';

import 'Assignment4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Assignment4()
          // appBar: AppBar(
          //   title: Center(
          //     child: Text("Login"),
          //   ),
          // ),
          // body: Center(
          //   child: Column(
          //     children: [
          //       SizedBox(
          //         height: 20,
          //       ),
          //       Container(width: 200, child: TextField()),
          //       Container(width: 200, child: TextField()),
          //       SizedBox(
          //         height: 20,
          //       ),
          //       ElevatedButton(onPressed: () {}, child: Text("Login"))
          //     ],
          //   ),
          // )
          // body: SingleChildScrollView(
          //   child: Center(
          //     child: Column(children: [
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //       SizedBox(
          //         height: 30,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.pink,
          //       ),
          //     ]),
          //   ),
          // ),
          // body: Row(
          //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Text("Frist Row"),
          //     Text("Frist Row"),
          //     Text("Frist Row"),
          //     Text("Frist Row"),
          //   ],
          // ),
          //     body: Column(
          //   children: [
          //     Text("1St column"),
          //     SizedBox(
          //       height: 10,
          //     ),
          //     Text("1St column"),
          //     SizedBox(
          //       height: 10,
          //     ),
          //     Text("1St column"),
          //     SizedBox(
          //       height: 10,
          //     ),
          //     Text("1St column"),
          //     SizedBox(
          //       height: 10,
          //     ),
          //     Text("1St column"),
          //   ],
          // )
          // body: Container(
          //   height: 100,
          //   width: 1200,
          //   color: Colors.purple,
          //   child: Text("Mobile App in flutter"),
          // ),
          ),
    );
  }
}
