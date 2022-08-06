import 'package:flutter/material.dart';


class SignupScreen extends StatelessWidget {
  static const String id = 'sign_up_screen';

  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return

      Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xdbfbff),
          title: const Text('Sign Up'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.black),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.assignment_ind),
                      hintText: 'Joe Mama',
                      labelText: 'Full Name'),
                  textAlign: TextAlign.center,
                ),
              ),
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.black),
                child: const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'example@email.com',
                      icon: Icon(Icons.email),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black)
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.black),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      icon: Icon(Icons.vpn_key),
                      hintText: 'Password',
                      labelText: 'Password'),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
                ),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                color: Colors.blue,
                textColor: Colors.white,
                child: const Text('Register'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      );
  }
}