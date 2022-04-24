// import 'dart:js';

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:quotes_app/screens/quotesScreen.dart';

class Quotes_category extends StatelessWidget {
  // final String id;
  final String title;
  // final Color color;
  final String url;

  Quotes_category({required this.title, required this.url});

  void jumpQuoteScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return QuotesScreen();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => jumpQuoteScreen(context),
      splashColor: Colors.amber,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(3),
        child: Stack(children: [
          Container(
            height: 150.0,
            width: 280.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(url),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.rectangle,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ]),
      ),
    );
  }
}
