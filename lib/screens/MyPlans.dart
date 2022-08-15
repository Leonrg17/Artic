import 'package:flutter/material.dart';
import '../constants.dart';

class MyPlans extends StatefulWidget {
  static const String id = 'myplans';

  @override
  State<MyPlans> createState() => _MyPlansState();
}

class _MyPlansState extends State<MyPlans> {
  List<int> _selectedItems = <int>[];
  List<String> plans = ['B.S in CMPE - SJSU', 'B.S in PHIL - SJSU'];
  final int planSize = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(title: "My Plans"),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container();
        },
      ),
      drawer: kNavBar,
    );
  }
}
