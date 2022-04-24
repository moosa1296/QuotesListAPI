// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import '../categoryMethod.dart';

class QuotesScreen extends StatelessWidget {
  const QuotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes List'),
      ),
      body: Container(
        child: Card(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.format_quote)),
                title: Text('Quotes will come here'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.copy),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.favorite_outline)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
