import 'package:flutter/material.dart';

import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardImageList = Container(
      height: 330,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/images/lugar_uyuni.jpg"),
          CardImage("assets/images/lugar_robore.jpg"),
          CardImage("assets/images/lugar_uyuy.jpg"),
          CardImage("assets/images/lugar_vagrande.jpg"),
          CardImage("assets/images/lugar_lp.jpg"),
          CardImage("assets/images/lugar_amazonia03.jpg"),
          CardImage("assets/images/lugar_uyuni.jpg"),
          CardImage("assets/images/lugar_tumichucua.jpg"),
        ],

      )
    );
  return cardImageList;
  }

}