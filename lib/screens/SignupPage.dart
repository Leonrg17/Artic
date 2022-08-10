import 'package:artic/screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:artic/components/rounded_button.dart';

class SignupScreen extends StatelessWidget {
  static const String id = 'sign_up_screen';

  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return

      Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: const Color(0xdbfbff),
          title: const Text('Sign Up'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.black),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.all(8),
                      icon: Icon(Icons.assignment_ind),
                      hintText: 'Joe Mama',
                      labelText: 'Full Name'),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.black),
                child: const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.all(8),
                      hintText: 'example@email.com',
                      icon: Icon(Icons.email),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black)
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.black),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.all(8),
                      icon: Icon(Icons.vpn_key),
                      hintText: 'Password',
                      labelText: 'Password'),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.black),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.all(8),
                      icon: Icon(null),
                      hintText: 'Confirm Password',
                      labelText: 'Confirm Password'),

                  textAlign: TextAlign.center,

                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RoundedButton(
                title: 'Register',
                color: const Color(0xFF1375CF),
                onPressed: () {},
                height: 50.0,
                width: 200.00
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Already have an account?'),
              SizedBox(
                height:30,
                child:
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                      color: Colors.blue,
                      fontSize: 10,
                    ),
                  ),

                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  child: const Text('sign in'),

                ),
              ),
            ],
          ),
        ),
      );
  }
}