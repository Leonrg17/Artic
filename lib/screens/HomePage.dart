import 'package:flutter/material.dart';
import '../constants.dart';

class HomePage extends StatelessWidget {
  static const String id = 'homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: const Center(
        child: Text('My Page now!'),
      ),
      drawer: kNavBar,
    );
  }
}
