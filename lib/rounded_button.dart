import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  String textoBoton;
  RoundedButton(this.textoBoton);
  @override
  Widget build(BuildContext context) {
    final roundedButton = InkWell(
      child: Container(
        height: 50,
        width: 160,
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(colors: [Color(0xff4268d3),Color(0xff574acf)],
            begin: FractionalOffset(0.0, 0.5),
            end: FractionalOffset(1.0, 0.5),
            stops: [0.0, 0.5],
            tileMode: TileMode.clamp)
        ),
        child: Center(
          child: Text(
              textoBoton,
            style: TextStyle(fontFamily: "Lato", fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Navegando..."))
        );
      },
    );
    return roundedButton;
  }
}