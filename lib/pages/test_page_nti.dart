import 'package:flutter/material.dart';

List <int>  itemSt = [
11,2,2,2,3,
];
class TestPageNti extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Image.network(
            "https://www.filterforge.com/more/help/images/size200.jpg"
        ),
      ),
    );
  }
}
