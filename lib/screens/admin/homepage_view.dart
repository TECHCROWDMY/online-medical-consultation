  
import 'package:flutter/material.dart';
import '../sidedrawer/sidedrawer.dart';
import 'aboutpage.dart';
import 'homepage.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int pageNo;
  @override
  void initState() {
    super.initState();
    pageNo = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin'),
        actions:<Widget>[
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.white,
              size: 25,
            ),
            onPressed: () {Navigator.pop(context);},
          ),
        ],
      ),
     // body: //getPage(),
     body:getPage(),
     
     drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(
                  color: (pageNo == 1 ? Colors.blue : Colors.black),
                  fontSize: (pageNo == 1 ? 18 : 16),
                ),
              ),
              onTap: () {
                setState(() {
                  pageNo = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text(
                'About',
                style: TextStyle(
                  color: (pageNo == 2 ? Colors.blue : Colors.black),
                  fontSize: (pageNo == 2 ? 18 : 16),
                ),
              ),
              onTap: () {
                setState(() {
                  pageNo = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  getPage() {
    switch (pageNo) {
      case 1:
        return HomePage();
        break;
      case 2:
        return AboutPage();
        break;
      default:
    }
  }
}