import 'package:flutter/material.dart';

import 'home.dart';

class Started extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
            height: 300,
            width: 300,
            margin: EdgeInsets.only(bottom:10),
              child: Image.asset("images/meditate2.png"),
            ),
            Text(
              'O  N  E  P  E  A  C  E',
              style: TextStyle(
                  color: Colors.black, fontSize: 24, wordSpacing: 3.0),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'where peace is everything ',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.black26,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.only(bottom:15, left:40, right: 40),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: RaisedButton(
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 17),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Home();
                    }));
                  },
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                ),
              ),
            ),
            Text(
              'Sign Up for new account?',
              style: TextStyle(
                color: Colors.grey,
                
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
