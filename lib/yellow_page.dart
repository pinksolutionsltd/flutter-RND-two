import 'package:flutter/material.dart';


class YellowPage extends StatefulWidget {
  @override
  _YellowPageState createState() => _YellowPageState();
}

class _YellowPageState extends State<YellowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              color: Colors.white,
              child: Text('Go to Main Page'),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
