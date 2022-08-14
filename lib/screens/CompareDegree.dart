import 'package:flutter/material.dart';
import '../constants.dart';



class CompareDegree extends StatefulWidget {
  @override
  _CompareDegreeState createState() => _CompareDegreeState();
  static const String id = 'CompareDegree';
}

class _CompareDegreeState extends State<CompareDegree> {

  List<int> _selectedItems = <int>[];
  List <String> fruit = ['apple','banana', 'orange'];
  int count = 0;


  @override
  Widget build(BuildContext context) {
    final int Degnum = fruit.length;
    return Scaffold(
        appBar: AppBar(
          title: Text('Compare Degrees'),
        ),
        body: ListView.builder(

          itemCount: Degnum,
          itemBuilder: (context, index){
            return
              Container(
                padding: const EdgeInsets.all(5.0),
                color: (_selectedItems.contains(index)) ? Colors.blue.withOpacity(0.5) : Colors.transparent,
                child: ListTile(
                  onTap: (){
                    if(! _selectedItems.contains(index)){
                      if (count != 2){
                        setState(() {
                          _selectedItems.add(index);
                          count++;
                        });
                      }
                    }
                    else if(_selectedItems.contains(index)){
                      setState(() {
                        _selectedItems.removeWhere((val) => val == index);
                        count--;
                      });
                    }

                  },
                  onLongPress: (){
                    print('Selected Item index at: $_selectedItems');
                    //idk what we want this to do yet
                  },
                  title:
                  Align(

                    alignment: Alignment.center,
                    child: Text(
                      fruit[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                ),
              );
          },

        ),
      drawer: kNavBar,
      );

  }
}