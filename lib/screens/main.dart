import 'package:flutter/material.dart';
import '../screens/HomePage.dart';
import '../screens/LoginScreen.dart';
import 'WelcomeScreen.dart';

void main() => runApp(const Artic());

class Artic extends StatelessWidget {
  const Artic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },

      //home: HomePage(),
    );
  }
}
