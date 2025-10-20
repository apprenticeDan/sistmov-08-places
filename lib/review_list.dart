import 'package:flutter/material.dart';
import 'package:places/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    final reviewList = Column(
      children: <Widget>[
            Review("assets/images/persona1.jpg", "Luz Clara", "1 reviews - 3 photos", 4, "Bueno para visitar con la familia."),
            Review("assets/images/persona2.jpg", "Lucia Claret", "10 reviews - 8 photos", 5, "Barato Bonito y Bueno."),
            Review("assets/images/persona3.jpeg", "Lupino Cciora", "6 reviews - 1 photos", 1, "Mala Atención."),
            Review("assets/images/persona4.jpeg", "Lupita Camacho", "7 reviews - 4 photos", 3, "El único contra fue el clima."),
      ],
    );

    return reviewList;
  }

}