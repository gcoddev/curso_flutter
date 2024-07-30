import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool isFavorite = false;

  void onPressedFav() {
    setState(() {
      isFavorite = !isFavorite;
    });

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(isFavorite
          ? "Agregaste a tus favoritos"
          : "Quistaste de tus favoritos"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xff11da53),
      mini: true,
      tooltip: 'Fav',
      onPressed: onPressedFav,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.white,
      ),
    );
  }
}
