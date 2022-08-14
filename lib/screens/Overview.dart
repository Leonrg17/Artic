import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Overview extends StatelessWidget {
  static const String id = 'homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(title: 'Overview'),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'You\'re This Close to Graduating!',
              style: GoogleFonts.roboto(
                height: 0.7,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),
            Image.asset('images/gradBar.png'),
            const SizedBox(height: 50),
            Text(
              '3/4 Courses Complete for degree:',
              style: GoogleFonts.roboto(
                height: 0.7,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                decoration: TextDecoration.underline,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'CMPE - SJSU',
              style: GoogleFonts.roboto(
                height: 0.7,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 40,
              ),
            ),
            const SizedBox(height: 20),
            Image.asset('images/inProgressCourses.png'),
          ],
        ),
      ),
      drawer: kNavBar,
    );
  }
}
