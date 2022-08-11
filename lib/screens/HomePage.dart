import 'package:flutter/material.dart';
import '../constants.dart';

class HomePage extends StatelessWidget {
  static const String id = 'homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(title: "Overview"),
      body: const Center(
        child: Text('My Page now!'),
      ),
      drawer: kNavBar,
    );
  }
}
