import 'package:flutter/material.dart';
import 'package:places/card_image_list.dart';
import 'package:places/gradient_back.dart';

class HomeAppBar extends StatelessWidget {
  String textoTitulo;
  HomeAppBar(this.textoTitulo);

  @override
  Widget build(BuildContext context) {
    //t´titulo
    final titulo = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20
      ),
      child: Text(
        textoTitulo,
        style: TextStyle(
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white
        ),
      ),
    );

    final appBar = Stack(
      children: <Widget>[
        GradientBack(),
        titulo,
        CardImageList()
      ],
    );
    return appBar;
  }

}