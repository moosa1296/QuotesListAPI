import 'package:flutter/material.dart';
import 'package:quotes_app/categoryMethod.dart';
// import 'package:quotes_app/models/categories.dart';
import 'package:quotes_app/widgets/quotes_category.dart';
// import '../models/quotes.dart';

class MainScreen extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Quotes'),
      ),
      body: GridView(
        children: categoryMethod
            .map((e) => Quotes_category(
                  title: e.title,
                  url: e.url,
                ))
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
      ),
    );
  }
}
