import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class MyPlans extends StatefulWidget {
  static const String id = 'myplans';

  @override
  State<MyPlans> createState() => _MyPlansState();
}

class _MyPlansState extends State<MyPlans> {
  List<String> plans = [
    'B.S in CMPE - SJSU',
    'B.S in PHIL - SJSU',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
  ];
  int planIndex = -1;
  String planName = '';

  @override
  Widget build(BuildContext context) {
    int plansLength = plans.length;

    return Scaffold(
      appBar: const KAppBar(title: "My Plans"),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: plansLength,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.transparent,
                  child: Transform.translate(
                    // adjust offset to change the list tile left to right spacing
                    offset: const Offset(25, 0),
                    child: ListTile(
                      onTap: () {},
                      onLongPress: () {
                        setState(() {
                          planIndex = index;
                          planName = plans[index];
                        });
                        print('Selected Item index at: $planName');
                      },
                      leading: Visibility(
                        visible: planIndex == index,
                        child: const Icon(
                          Icons.star,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                      title: Transform.translate(
                        // adjust offset to change the icon to text spacing
                        offset: const Offset(0, 0),
                        child: Text(
                          plans[index],
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: MaterialButton(
              minWidth: 339.0,
              height: 85.0,
              color: const Color(0xff1375CF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0)),
              onPressed: () {
                print("you pressed me");
              },
              child: Text(
                'CREATE PLAN',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
      drawer: kNavBar,
    );
  }
}
