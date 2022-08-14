import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Overview extends StatelessWidget {
  static const String id = 'homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Overview"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            'You\'re This Close to Graduating!',
            style: GoogleFonts.roboto(
              height: 0.7,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              decoration: TextDecoration.underline,
              fontSize: 20,
            ),
          ),
          Container(),
          const SizedBox(height: 50),
          const Text('3/4 Courses Complete for degree:'),
          const Text('CMPE - SJSU'),
          Container(),
        ],
      ),
      drawer: kNavBar,
    );
  }
}
