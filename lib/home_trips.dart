import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

// ignore: must_be_immutable
class HomeTrips extends StatelessWidget {
  String descriptionDummy =
      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur suscipit temporibus quia quasi reprehenderit alias, deserunt eius obcaecati voluptate est quis ratione vitae adipisci dignissimos?";

  HomeTrips({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Yakys <3", 4, descriptionDummy),
            const ReviewList()
          ],
        ),
        HeaderAppbar()
      ],
    );
  }
}
