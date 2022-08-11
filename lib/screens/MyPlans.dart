import 'package:flutter/material.dart';
import '../constants.dart';

class MyPlans extends StatefulWidget {
  static const String id = 'myplans';

  @override
  State<MyPlans> createState() => _MyPlansState();
}

class _MyPlansState extends State<MyPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(title: "My Plans"),
      body: const Text("hello"),
      drawer: kNavBar,
    );
  }
}
