import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class MainTodoApp extends StatefulWidget {
  const MainTodoApp({Key? key}) : super(key: key);

  @override
  _MainTodoAppState createState() => _MainTodoAppState();
}

class _MainTodoAppState extends State<MainTodoApp> {
  var output = "";
  List<dynamic> lst = ["Add What you Want", "like:Daily Routine"];
  dynamic currentTime = DateFormat("yyyy-MM-dd-kk:mm").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TodoApp By Kamran Ayoub",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: lst.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
              height: 50,
              // width: 40,
              color: Colors.blueGrey,
              margin: EdgeInsets.only(top: 50),
              // child: Text("${lst[index]}"),
              child: ListTile(
                title: Text(
                  "${lst[index]},       ${currentTime}",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Container(
                  width: 50,
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Edit"),
                                    content: TextField(
                                      onChanged: (value) {
                                        output = value;
                                      },
                                    ),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            setState(() {
                                              lst.replaceRange(
                                                  index, index + 1, {output});
                                            });
                                          },
                                          child: Text("Edit"))
                                    ],
                                  );
                                });
                          },
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          )),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              lst.removeAt(index);
                            });
                          },
                          child: Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                    ],
                  ),
                ),
              ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Add"),
                  content: TextField(
                    onChanged: (value) {
                      output = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          setState(() {
                            lst.add(output);
                          });
                        },
                        child: Text("Add"))
                  ],
                );
              });
        },
        child: Text("Add"),
      ),
    );
  }
}
