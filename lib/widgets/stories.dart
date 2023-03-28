import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyStories extends StatelessWidget {
  const MyStories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.width * 0.3,
                    width: MediaQuery.of(context).size.width - 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                          radius: 35,
                          backgroundColor: index == 0 ? Colors.white : Colors.blue,
                        child: CircleAvatar(
                          radius: 33,
                           backgroundColor: Colors.white,
                           child: index == 0 ? Icon(Icons.add) : Text("$index")),
                        ),
                       );
                      },
                    )
                  )
                ]
              )
            );
  }
}