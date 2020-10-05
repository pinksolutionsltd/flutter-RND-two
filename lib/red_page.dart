import 'package:flutter/material.dart';


class RedPage extends StatefulWidget {
  @override
  _RedPageState createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
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
