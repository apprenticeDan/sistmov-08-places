import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  String path;
  CardImage(this.path);
  @override
  Widget build(BuildContext context) {
    final cardImage = Padding(
        padding: EdgeInsets.only(
            top: 70, right: 10, bottom: 30),
        child: Container(
      width: 250,
      padding: EdgeInsets.only(
        top: 50,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                path,
              ), fit: BoxFit.cover),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black45,
                blurRadius: 15,
                offset: Offset(5, 10)
            )
          ]
      ),
    ),
    );
    return cardImage;
  }
}