import 'package:flutter/material.dart';
import 'button_purple.dart';

// ignore: must_be_immutable
class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  String descriptionDummy =
      "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aut soluta dolorum iusto saepe harum, maxime sunt eveniet repellendus fugiat iste nostrum quam voluptate quisquam velit officia vitae ipsa optio eligendi.";

  @override
  Widget build(BuildContext context) {
    final starBorder = Container(
      margin: const EdgeInsets.only(top: 320.3, right: 3.0),
      child: const Icon(
        Icons.star_border,
        color: Color(0xfff2c611),
      ),
    );
    final starHalf = Container(
      margin: const EdgeInsets.only(top: 320.3, right: 3.0),
      child: const Icon(
        Icons.star_half,
        color: Color(0xfff2c611),
      ),
    );
    final star = Container(
      margin: const EdgeInsets.only(top: 320.3, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xfff2c611),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                fontFamily: 'Lato'),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            starHalf,
            starBorder,
          ],
        ),
      ],
    );

    final description = Container(
        margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Text(
          descriptionPlace,
          style: const TextStyle(
              fontSize: 16.0,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'Lato'),
          textAlign: TextAlign.left,
        ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStars,
        description,
        description,
        ButtonPurple("Navigate")
      ],
    );
  }
}
