import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gradient = Container(
      height: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xff4268d3),
              Color(0xff0b1e53),
            ],
        begin: FractionalOffset(0.5, 0.01),
        end: FractionalOffset(0.8,0.5),
        stops: [0.0, 0.6],
            tileMode: TileMode.clamp
        ),
      ),
    );
    return gradient;
  }

}