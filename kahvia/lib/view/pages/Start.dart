import 'package:flutter/material.dart';

import 'package:kahvia/view/pages/homePage.dart';

class start extends StatelessWidget {
  const start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                  text: "Wellcome To ",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'KAHVIA',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown))
                  ]),
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 615.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/wellcome_kahvia.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              "Coffee is always good idea.",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 15),
            Column(
              children: <Widget>[
                // the login button
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  // defining the shape
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.brown),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
                // creating the signup button
              ],
            ),
          ],
        ),
      ),
    );
  }
}
