import 'package:flutter/material.dart';
import 'package:places/rounded_button.dart';

class DescriptionPlace extends StatelessWidget {

  late String textTit;
  late int cantEstre;
  late String textDescr;

  DescriptionPlace(this.textTit, this.cantEstre, this.textDescr);

  @override
  Widget build(BuildContext context) {
    final titulo = Container(
      margin: EdgeInsets.only(
        right: 10
      ),
      child: Text(
        textTit,//"Duwilli Ella",
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 34,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final estrella = Container(
        margin: EdgeInsets.only(
            right: 10
        ),
        child: Icon(
          Icons.star,
        color: Colors.amber,)

    );

    final estrellaBorde = Container(
      margin: EdgeInsets.only(
          right: 15
      ),
      child: Icon(
          Icons.star_border,
          color: Colors.black54
      ),
    );

    final filaEstrellas = Row(
      children:
      List.generate(cantEstre, (index) {
        return index < cantEstre-1 ? estrella : estrellaBorde;}
      /*<Widget>[
        estrella,
        estrella,
        estrella,
        estrella,
        estrellaBorde
      ],*/
    ));

    final filaTitulo = Row(
      children: <Widget>[
        titulo,
        filaEstrellas
      ],
    );

    final descripcion = Container(
        margin: EdgeInsets.only(
          top: 10
        ),
        child: Text(
            textDescr,
            style: TextStyle(
              fontFamily: "Lato",
            color: Colors.indigo,
        ),
        ),
    );
    final descriptionPlace = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        filaTitulo,
        descripcion,
        RoundedButton("Navigate"),
      ],
    );
    return descriptionPlace;
  }

}