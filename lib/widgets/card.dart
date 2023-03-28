import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyCard extends StatefulWidget {
  String? titulo;
  String? subtitulo;
  String? foto;
  String? avatar;

  MyCard({super.key, this.titulo, this.subtitulo, this.foto, this.avatar});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  String? _popUpSelecionado;

  List<String> choices = <String>[
    "Item 1",
    "Item 2",
    "Item 3",
  ];

  void _select(String _select) {
    setState(() {
      _popUpSelecionado = _select;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 25),

        Container(
          height: MediaQuery.of(context).size.height / 3.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.red,
          ),
          child: Image(
            image: NetworkImage("${this.widget.foto}"),
            fit: BoxFit.fill,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 7.7,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 25,
                    foregroundImage: NetworkImage("${this.widget.avatar}"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "${this.widget.titulo}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "${this.widget.subtitulo}",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: (){
                  print("click");
                  PopupMenuButton(
                    onSelected: _select,
                    itemBuilder: (BuildContext context) {
                      return choices.map(
                        (String item) {
                        return  PopupMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }
                    ).toList();
                  },
                );
              },
                child: Icon(Icons.more_vert)
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
