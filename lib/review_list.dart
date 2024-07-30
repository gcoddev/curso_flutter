import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Review("assets/img/dark.png", "Garys", "1 review 5 photos", 4,
              "Amo a mi amorcito"),
          Review("assets/img/light.png", "Garys 2", "2 review 5 photos", 4,
              "Amo mucho a mi amorcito"),
          Review("assets/img/dark.png", "Garys", "1 review 5 photos", 4,
              "Amo a mi amorcito"),
        ],
      ),
    );
  }
}
