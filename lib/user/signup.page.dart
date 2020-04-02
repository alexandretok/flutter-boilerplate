import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
      body: SingleChildScrollView(
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 32),
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 64),
                  elevation: 10,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 4),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Your name",
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 4),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Your email",
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 4),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 4),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password confirmation",
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
