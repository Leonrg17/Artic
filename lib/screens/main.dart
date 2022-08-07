import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'LoginScreen.dart';
import 'WelcomeScreen.dart';
import 'SignupPage.dart';

void main() => runApp(const Artic());

class Artic extends StatelessWidget {
  const Artic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomeScreen(),
      initialRoute: SignupScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
      },

      //home: HomePage(),
    );
  }
}
