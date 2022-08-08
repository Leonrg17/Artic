import 'package:flutter/material.dart';

import '../screens/ForgotPassword.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Screen!'),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, ForgotPassword.id);
        },
        child: const Text('Press me :^)'),
      ),
    );
    //return const Text("welcome screen");
  }
}
