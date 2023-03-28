import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/widgets/card.dart';
import 'package:flutter_application_1/widgets/header.dart';
import 'package:flutter_application_1/widgets/search.dart';
import 'package:flutter_application_1/widgets/stories.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Padding(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              MyHeader(),
        
              MySearch(),
              
              MyStories(),
        
              MyCard(
                titulo: "fiec",
                subtitulo: "Estágio ti",
                foto: "../assets/images/1.jpeg",
                avatar: "../assets/images/4.jpg"
              ),
              MyCard(
                titulo: "sultec",
                subtitulo: "Estágio ti",
                foto: "../assets/images/2.jpg",
                avatar: "../assets/images/7.png"
              ),
               MyCard(
                titulo: "javatech",
                subtitulo: "Estágio ti",
                foto: "../assets/images/3.png",
                avatar: "../assets/images/9.png"
              ),
            ]
          ),
        )))
    );
  }
}