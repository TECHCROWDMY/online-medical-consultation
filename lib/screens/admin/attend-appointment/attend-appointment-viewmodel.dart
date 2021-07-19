import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/*
class bookAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient'),
      ),
     // body: //getPage(),
    // body:getPage(),
     
    );
  }
}*/

class bookAP extends StatefulWidget {
 // debugShowCheckedModeBanner: false,
  @override
  _bookAPState createState() => _bookAPState();
}

class _bookAPState extends State<bookAP> {
 bool _value = false;
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
         
          body:CheckboxListTile(
            
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
            title: Text("Checkbox"),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10
            ),
          ),
        );
     
  }
}