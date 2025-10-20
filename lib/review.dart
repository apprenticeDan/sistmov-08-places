import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  late int cantEstre;
  late String pathFoto;
  late String txtNomUsr;
  late String txtResUsr;
  late String txtComent;

  Review(
      this.pathFoto, this.txtNomUsr,
      this.txtResUsr, this.cantEstre,
      this.txtComent);

  @override
  Widget build(BuildContext context) {
    final foto = Container(
      margin: EdgeInsets.only(top: 15, right: 10),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image:
        AssetImage(pathFoto), //"assets/images/persona1.jpg"
        fit: BoxFit.cover)
      ),
    );

    //nombre del usuario
    final nomUsr = Container(
      child: Text(txtNomUsr, //"María Elena"
      style: TextStyle(
        fontFamily: "Lato",
        fontSize: 22,
        fontWeight: FontWeight.w600
      ),),
    );

    final estrella = Container(
        margin: EdgeInsets.only(
            left: 5,
            right: 5
        ),
        child: Icon(
          Icons.star,
          size: 18,
          color: Colors.amber,)

    );

    final estrellaBorde = Container(
      margin: EdgeInsets.only(
          right: 5,
          left: 5
      ),
      child: Icon(
          Icons.star_border,
          size: 18,
          color: Colors.black54
      ),
    );

    final filaEstrellas = Row(
        children:
        List.generate(cantEstre, (index) {
          return index < cantEstre-1 ? estrella : estrellaBorde;}
        ));

    final resUsr = Container(
      margin: EdgeInsets.only(
        right: 7
      ),
      child: Text(txtResUsr, //"1 - review - 4 photos"
      style: TextStyle(
        fontFamily: "Lato",
        color: Colors.black54
      ),),
    );

    // fila resumen
    final filaResumen = Row(
      children: <Widget>[
        resUsr,
        filaEstrellas,
      ],
    );

    final comentario = Container(
      child: Text(
        txtComent //"Excelente lugar para visitar en fin de semana"
      ),
    );


    // col
    final columnaReview = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        nomUsr,
        filaResumen,
        comentario,
      ],
    );

    final review = Row(
      children: <Widget>[
        foto,
        columnaReview
      ],
    );

    return review;
  }
}