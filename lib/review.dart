import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {
  String pathImage = "assets/img/dark.png";
  String name = "Gary";
  String details = "1 review 5 photos";
  int stars = 5;
  String review = "Amo a mi amorcito";

  Review(this.pathImage, this.name, this.details, this.stars, this.review);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final starBorder = Container(
      margin: const EdgeInsets.only(right: 3.0),
      child: const Icon(
        size: 12.0,
        Icons.star_border,
        color: Color(0xfff2c611),
      ),
    );
    final starHalf = Container(
      margin: const EdgeInsets.only(right: 3.0),
      child: const Icon(
        size: 12.0,
        Icons.star_half,
        color: Color(0xfff2c611),
      ),
    );
    final star = Container(
      margin: const EdgeInsets.only(right: 3.0),
      child: const Icon(
        size: 12.0,
        Icons.star,
        color: Color(0xfff2c611),
      ),
    );
    final userName = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(fontFamily: 'Lato', fontSize: 20.0),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Row(children: <Widget>[
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: const TextStyle(
                fontFamily: 'Lato', fontSize: 13.0, color: Color(0xffa3a5a7)),
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
      ]),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        review,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: 'Lato', fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    final photo = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );
    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
