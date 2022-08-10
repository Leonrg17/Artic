import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  static const String id = 'forgot_password';
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            children: [
              const SizedBox(height: 69),
              Text(
                'Forgot Password?',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 28,
                  color: const Color(0xff007bff),
                ),
              ),
              const SizedBox(height: 69),
              const TextField(
                decoration: InputDecoration(hintText: 'Email Address'),
                textAlign: TextAlign.left,
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'Q1: Who\'s your mami?'),
                textAlign: TextAlign.left,
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'Q2: Who\'s your papi?'),
                textAlign: TextAlign.left,
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'Q3: What\'s your SSN?'),
                textAlign: TextAlign.left,
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'New Password'),
                textAlign: TextAlign.left,
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'Confirm New Password'),
                textAlign: TextAlign.left,
              ),
              MaterialButton(
                minWidth: 350.0,
                color: const Color(0xff1375CF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0)),
                onPressed: () {
                  // update password
                },
                child: Text(
                  'Reset Password',
                  style: GoogleFonts.roboto(
                    height: 0.7,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: GoogleFonts.roboto(
                    height: 0.7,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    color: const Color(0xFF007BFF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
