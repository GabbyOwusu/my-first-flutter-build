import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManageStress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(elevation: 0),

      body: SafeArea(
        child: ListView(
          children: <Widget>[
           
            
            SizedBox(
              height: 30,
            ),
            Container(
               margin: EdgeInsets.only(left: 20),
              child: Text(
                'Managing Stress',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'Week 1-Chapter 1',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'Getting Started',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
               margin: EdgeInsets.only(left: 20),
              child: Text(
                'Before we begin, We would like you to sit in a '
                'relaxed position in a place with no external '
                'disturbance. We recommend wearing '
                'headphones throughout  the course period for '
                'better results ',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
             
            ),
            SizedBox(height: 80),
            Container(
              width: 90,
              child: RaisedButton(
                color: Colors.blue,
                child: Text('Begin'),
                elevation: 0,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () {},
              ),
              constraints: BoxConstraints.expand(width: 330.0, height: 100.0),
              alignment: FractionalOffset(0.1, 0.4),
            ),
            Column(
              children: <Widget>[],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
      elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.format_list_bulleted,
              color: Colors.white,
            ),
            title: Text(
              'Chapter List',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.help_outline,
              color: Colors.white,
            ),
            title: Text(
              'pre requisites',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.help_outline,
              color: Colors.white,
            ),
            title: Text(
              'Notifications',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
