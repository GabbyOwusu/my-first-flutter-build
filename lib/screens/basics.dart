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
    "Anger Management",
    "Anger Management",
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
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'ONEPEACE',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 10,
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
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: ListView.builder(
          itemCount: widget.texts.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 3,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
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
                  title: Text(widget.texts[index],
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  subtitle:
                      Text(widget.subs[index], style: TextStyle(fontSize: 15)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
