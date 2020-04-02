import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 60, bottom: 32),
                width: 128,
                child: Image.asset('assets/images/logo.png'),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 64),
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Email",
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed("/profile");
                        },
                        child: Text("Login"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: FlatButton(
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/sign-up");
                  },
                ),
              ),
              Container(
                child: FlatButton(
                  child: Text(
                    "Forgot my password",
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (bCtx) {
                          return SingleChildScrollView(
                            child: Container(
                              padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      "Password recovery",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24),
                                    child: Text(
                                        "Type your email on the field below in order to receive instructions on how to recover your password."),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24),
                                    child: TextField(
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                          hintText: "Your email"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: RaisedButton(
                                      child: Text("Send"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
