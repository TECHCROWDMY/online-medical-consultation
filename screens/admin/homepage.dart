import 'package:flutter/material.dart';
import 'book-appointment/book-appointment.dart';
import 'my-appointments/my-appointments-view.dart';
import 'attend-appointment/attend-appointment.dart';
import 'my-prescription/my-prescription-view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,

  children: <Widget>[
    Container(
      child: GestureDetector(
        onTap:() {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => bookAppointment()),);
              },
        
        child:Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: const <Widget>[
            Icon(
            Icons.local_hospital,
            color: Colors.white,
            size: 75.0,
          ), 
            Text('Book Appointmet',
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,)
            ),
     ],),),
      
      color: Colors.pink[400],
      
    ),
    Container(
      child: GestureDetector(
        onTap:() {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => myAppointments()),);
              },
        
        child:Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: const <Widget>[
            Icon(
            Icons.group,
            color: Colors.white,
            size: 75.0,
          ), 
            Text('My Appointments',
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,)
            ),
     ],),),
      
      color: Colors.pink[400],
      
    ),
    Container(
      child: GestureDetector(
        onTap: () => {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => attendAppointment()),);
              },
        
        child:Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: const <Widget>[
            Icon(
            Icons.group,
            color: Colors.white,
            size: 75.0,
          ), 
            Text('Attend Appointmet',
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,)
            ),
     ],),),
      
      color: Colors.pink[400],
      
    ),
    Container(
      child: GestureDetector(
        onTap: () => {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => myPrescription()),);
              },
        
        child:Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: const <Widget>[
            Icon(
            Icons.medical_services,
            color: Colors.white,
            size: 75.0,
          ), 
            Text('My Prescriptions',
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,)
            ),
     ],),),
      
      color: Colors.pink[400],
      
    ),
 
     
  ],
),
    );
  }
}