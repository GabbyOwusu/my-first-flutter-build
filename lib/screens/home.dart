import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynewapp/screens/basics.dart';
import 'package:mynewapp/screens/manage.dart';

class Home extends StatelessWidget {
  final labels = [
    'Chapter 9: Continue Reading',
    'Hows your mood today',
    'Log in Activity',
  ];
  final icons = [
    Icons.play_arrow,
    Icons.face,
    Icons.add,
  ];

  final colors = [
    Color.fromRGBO(54, 59, 57, 10),
    Color.fromRGBO(83, 90, 186, 10),
    Color.fromRGBO(83, 90, 186, 10),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.redAccent,
        elevation: 0,
        leading: null,
        title: Text(
          'ONEPEACE',
          style: TextStyle(
            fontSize: 20.0,
            letterSpacing: 10.0,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(232, 236, 239, 3),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: Colors.redAccent,
              ),
            ),
            Positioned(
              left: 30,
              right: 30,
              child: Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                width: 300,
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
                      style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 200,
                      child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                                height: 15,
                              ),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: colors[index]),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(icons[index]),
                                    color: Colors.white,
                                    onPressed: () {},
                                  ),
                                  Text(
                                    labels[index],
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 140),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 40),
                height: 160,
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
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.fromLTRB(10, 70, 10, 9),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                CupertinoIcons.play_arrow,
                                size: 35,
                                color: Colors.grey,
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '01.The Basics',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Deserunt fugiat dolore. Deserunt \nhenderitsomnecionetct dk dujdf,\nDeserunt henderit',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                              ],
                            )
                          ],
                        ),
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
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.fromLTRB(10, 70, 10, 9),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    CupertinoIcons.play_arrow,
                                    size: 35,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {},
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 90),
                                      child: Text(
                                        '02. Managing Stress',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Deserunt fugiat dolore. Deserunt \nhenderitsomnecionetct dk dujdf,\nDeserunt henderit',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 10),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 1,
        elevation: 0,
        onTap: (int index) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return Cards();
            }),
          );
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.redAccent,
              size: 20,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.redAccent),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.black,
              size: 18,
            ),
            title: Text('Courses', style: TextStyle(color: Colors.black)),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 18,
            ),
            title: Text('Notifications'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
              size: 18,
            ),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
