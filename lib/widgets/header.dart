import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,       
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Olá",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black45
                    ),
                  ),
                  Text(
                    "lucas",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )
                  )
                ]
              ),

              CircleAvatar(
                backgroundImage: NetworkImage("https://yt3.googleusercontent.com/qB-nQZG1GLBnnMRmaFBMc_BRM96i9RaDyoxvxs6WRuQE6UHWO1IsqqDTgHivNFv2-Qmp_NCP5A=s900-c-k-c0x00ffffff-no-rj"),
                radius: 35
              )
              ]
            );
  }
}