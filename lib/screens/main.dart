import 'package:artic/screens/CompareDegree.dart';
import 'package:artic/screens/SignupPage.dart';
import 'package:flutter/material.dart';
import '../screens/ForgotPassword.dart';
import '../screens/LoginScreen.dart';
import '../screens/WelcomeScreen.dart';
import '../screens/SignupPage.dart';
import '../screens/HomePage.dart';
import '../screens/MyPlans.dart';
import 'package:get/get.dart';

void main() => runApp(const Artic());

class Artic extends StatelessWidget {
  const Artic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ForgotPassword.id: (context) => ForgotPassword(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        HomePage.id: (context) => HomePage(),
        MyPlans.id: (context) => MyPlans(),
        CompareDegree.id: (context) => CompareDegree(),
      },

      //home: HomePage(),
    );
  }
}
