import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text('My Profile'),
    );

    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).padding.vertical);
    print(appBar.preferredSize.height);
    print(MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.vertical -
        appBar.preferredSize.height);

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 32),
              width: 128,
              height: 128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(64)),
                border: Border.all(width: 1.5),
                image: DecorationImage(
                  image: NetworkImage('http://placehold.it/128x128'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: Icon(Icons.person),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  alignment: Alignment.centerLeft,
                  child: Text("Alexandre Justino"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: Icon(Icons.email),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text("alexandretok@gmail.com"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: Icon(Icons.phone),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text("+351 913 855 831"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: Icon(Icons.notifications),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text("Notifications: ON"),
                ),
              ],
            ),
            // Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: RaisedButton(
                onPressed: () => 0,
                color: Colors.blue,
                child: Text(
                  'Edit profile',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
