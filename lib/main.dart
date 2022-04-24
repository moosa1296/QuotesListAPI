// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:quotes_app/categoryMethod.dart';
// import 'package:quotes_app/models/categories.dart';
// import 'package:quotes_app/models/quotes.dart';
// import 'package:quotes_app/widgets/quotes_category.dart';
import './screens/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
