import 'package:flutter/material.dart';

import 'home.dart';

class Started extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(127, 132, 190, 1),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50),
            Container(
              height: 240,
              padding: EdgeInsets.symmetric(vertical: 3),
              alignment: Alignment.center,
              child: Image.asset(
                "images/meditate.gif",
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'ONEPEACE',
              style: TextStyle(
                  color: Colors.white, fontSize: 24, letterSpacing: 10.0),
            ),
            SizedBox(height: 10),
            Text(
              'where peace is everything ',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white60,
              ),
            ),
            SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.all(40),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: RaisedButton(
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 18),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Home();
                      }),
                    );
                  },
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
            // Text(
            //   'Sign Up for new account?',
            //   style: TextStyle(
            //     color:Colors.white60,
            //     fontSize: 15,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
