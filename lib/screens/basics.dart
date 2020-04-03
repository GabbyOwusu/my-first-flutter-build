import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynewapp/screens/manage.dart';

class Cards extends StatefulWidget {
  final texts = [
    "The Basics",
    "Managing Stress",
    "Focus",
    "Power of Om",
    "Positivity",
    "Balancing Emotions",
    "Anger Management",
  ];

  final subs = [
    "2 weeks Beginners",
    "3 weeks   Moderate",
    "2 weeks   Intermediate",
    "3 weeks   Moderate",
    "2 weeks   Intermediate",
    "3 weeks   Moderate",
    "3 weeks   Moderate",
  ];

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
                child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('   O N E P E A C E',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                          wordSpacing: 3.0,
                          color: Colors.white,
                        )),
                    IconButton(
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 1000,
                  child: ListView.builder(
                    itemCount: widget.texts.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 340,
                        height: 70,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            child: ListTile(
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.cloud_download,
                                  size: 30,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return ManageStress();
                                    }),
                                  );
                                },
                              ),
                              title: Text(widget.texts[index]),
                              subtitle: Text(widget.subs[index]),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.book,
              color: Colors.redAccent,
            ),
            title: Text('Courses'),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            title: Text('Notifications'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.black,
            ),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
