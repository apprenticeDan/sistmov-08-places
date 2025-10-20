import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/gradient_back.dart';
import 'package:places/review.dart';
import 'package:places/review_list.dart';

import 'description_place.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final descriptionPlace = Container(
      margin: EdgeInsets.only(
        top: 80,
        left: 30, right: 30,
      ),child: DescriptionPlace(
      "Uyuni",
      6,
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, 'Lorem ipsum dolor sit amet..', comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from 'de Finibus Bonorum et Malorum' by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham."
    ),
    );
/*
    final review = Container(
      margin: EdgeInsets.only(
        top: 300,
        left: 30, right: 30,
      ),
      height: 80,
      child:Review(
          "assets/images/persona1.jpg","María Elena",
          "1 - review - 4 photos",6,
          "Excelente lugar para visitar en fin de semana"),
    );
*/
    final reviewList = Container(
      margin: EdgeInsets.only(
        top: 20, left: 30, right: 30),
      // height: 85,
      child: ReviewList(),
    );

    final listView = ListView(
      children: <Widget>[
        descriptionPlace,
        reviewList
      ],
    );

    return Scaffold(
        /*appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            "My Places",
          ),
        ),*/
        body: Stack(
          children: <Widget>[
            GradientBack(),
            //listView
            //review
            //descriptionPlace
          ],
        ),
      );
  }
}