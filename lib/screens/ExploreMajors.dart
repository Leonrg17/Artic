import 'package:flutter/material.dart';
import 'package:artic/constants.dart';
import 'package:artic/components/rounded_button.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'HomePage.dart';

class ExploreMajors extends StatefulWidget {
  static const String id = 'explore_majors';
  @override
  _ExploreMajorsState createState() => _ExploreMajorsState();
}

class _ExploreMajorsState extends State<ExploreMajors> {

  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 40.0, horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Specify College(s)',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                /*
                TextField(
                  textAlign: TextAlign.left,
                  onChanged: (value) {
                    //email = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      labelText: 'Any'
                  ),
                ),
                 */
                SearchableDropdown.multiple(
                  items: items,
                  selectedItems: selectedItems,
                  hint: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Select any"),
                  ),
                  searchHint: "Select any",
                  onChanged: (value) {
                    setState(() {
                      selectedItems = value;
                    });
                  },
                  closeButton: (selectedItems) {
                    return (selectedItems.isNotEmpty
                        ? "Save ${selectedItems.length == 1 ? '"' + items[selectedItems.first].value.toString() + '"' : '(' + selectedItems.length.toString() + ')'}"
                        : "Save without selection");
                  },
                  isExpanded: true,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Specify Major(s)',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.left,
                  onChanged: (value) {
                    //password = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: 'Any',
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                RoundedButton(
                    title: 'Explore',
                    color: const Color(0xFF1375CF),
                    onPressed: () async {
                      setState(() {
                        showSpinner = true;
                      });

                      try {
                        final user = null; // filler code until DB is set up
                        /*
                      final user = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                       */
                        if (user != '') {
                          Navigator.pushNamed(context, HomePage.id);
                        }

                        setState(() {
                          showSpinner = false;
                        });
                      } catch (e) {
                        print(e);
                      }
                    },
                    height: 50.0,
                    width: 250.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
