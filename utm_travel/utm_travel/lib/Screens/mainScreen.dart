import 'package:flutter/material.dart';
import 'package:utm_travel/Screens/login.dart';
import 'package:utm_travel/Screens/signUp.dart';

class MainScreen extends StatelessWidget {
  static const String idScreen = "mainScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 60.0,
              ),
              Image(
                image: AssetImage("images/logo.png"),
                width: 370.0,
                height: 270.0,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 60.0,
              ),
              Text(
                "We will guide you in the right directions!",
                style: TextStyle(
                  fontSize: 21.0,
                  fontFamily: "Brand Bold",
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.0,
                    ),

                    SizedBox(
                      height: 50.0,
                    ),
                    // ignore: deprecated_member_use
                    RaisedButton(
                        color: Colors.red[900],
                        textColor: Colors.white,
                        child: Container(
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 18.0, fontFamily: "Brand Bold"),
                            ),
                          ),
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(23.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => SignUpScreen()),
                          );
                        }),
                  ],
                ),
              ),

              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text(
                  "Already have an Account? Login here.",
                  style: TextStyle(fontSize: 16.0, fontFamily: "Brand Bold"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
