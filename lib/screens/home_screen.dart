import 'package:disenos/widgets/bakcground.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //Background
        Background()
      ],
    ));
  }
}