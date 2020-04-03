import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynewapp/screens/basics.dart';
import 'package:mynewapp/screens/manage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SafeArea(
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
                ]),
            Container(
                width: 300,
                height: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Morning, Kishore',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Lets continue with Session',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 60,
                      width: 260,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(13, 0, 10, 0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0)),
                          color: Colors.black,
                          child: ListTile(
                            leading: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                            title: Text(
                              'Chapter 9: Continue Reading',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 260,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(13, 0, 10, 0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0)),
                          color: Colors.blue,
                          child: ListTile(
                            leading: Icon(
                              Icons.face,
                              color: Colors.white,
                            ),
                            title: Text(
                              'Hows your mood today?',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 260,
                      child: Padding(
                        padding:  EdgeInsets.fromLTRB(13, 0, 10, 0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          color: Colors.blue,
                          child: ListTile(
                            leading: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            title: Text(
                              'Chapter 9: Continue Reading',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(
                  '           Get Started',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 290,
                    margin: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(
                            'images/flower2.jpg',
                          ),
                          fit: BoxFit.fitWidth,
                        )),
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          width: 290,
                          height: 140,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            margin: EdgeInsets.fromLTRB(10, 70, 10, 9),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  CupertinoIcons.play_arrow,
                                  size: 35,
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 0),
                                      child: Text(
                                        '01. The Basics',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(' Its just some text,'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    width: 290,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(
                            'images/flower1.jpg',
                          ),
                          fit: BoxFit.fitWidth,
                        )),
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          width: 290,
                          height: 140,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            margin: EdgeInsets.fromLTRB(10, 70, 10, 9),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    CupertinoIcons.play_arrow,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return ManageStress();
                                    }));
                                  },
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 0),
                                      child: Text(
                                        '02. Managing Stress',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(' Its just some text,'),
                                    Text('This also just text'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.red),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.book,
              color: Colors.black,
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
        onTap: (index) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Cards();
          }));
        },
      ),
    );
  }
}
