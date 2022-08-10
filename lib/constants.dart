import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// potentially make this the entire button, constant button for confirm?
const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

// copied from Flash Chat App as an example
const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  hintStyle: TextStyle(fontSize: 20.0),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF006CD0), width: 1.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF006CD0), width: 2.0),
  ),
);

SizedBox kNavBar = SizedBox(
  width: 240,
  child: Drawer(
      child: ListView(
    padding: EdgeInsets.zero,
    children: [
      SizedBox(
        height: 100,
        child: DrawerHeader(
          decoration: const BoxDecoration(),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('images/IceCube.png'),
                radius: 20,
                backgroundColor: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'ARTIC',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: 36,
                  color: const Color(0xff1375CF),
                ),
              ),
            ],
          ),
        ),
      ),
      ListTile(
        leading: const ClipRect(child: Icon(Icons.home, color: Colors.black)),
        title: const Text('Overview'),
        onTap: () {
// Update the state of the app.
// ...
        },
      ),
      ListTile(
        title: const Text('Compare Degree Plans'),
        onTap: () {
// Update the state of the app.
// ...
        },
      ),
      ListTile(
        title: const Text('Explore Majors'),
        onTap: () {
// Update the state of the app.
// ...
        },
      ),
      ListTile(
        title: const Text('My Plans'),
        onTap: () {
// Update the state of the app.
// ...
        },
      ),
      ListTile(
        title: const Text('Course History'),
        onTap: () {
// Update the state of the app.
// ...
        },
      ),
      const SizedBox(
        height: 150,
      ),
      ListTile(
        title: const Text("How do I use this app?"),
        onTap: () {},
      ),
    ],
  )),
);
