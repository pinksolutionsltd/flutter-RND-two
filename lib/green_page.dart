import 'package:flutter/material.dart';
import 'package:myrndtwo/home_page.dart';


class GreenPage extends StatefulWidget {
  @override
  _GreenPageState createState() => _GreenPageState();
}

class _GreenPageState extends State<GreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
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

            RaisedButton(
              color: Colors.white,
              child: Text('Go to Main Page'),
              onPressed: (){
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> HomePage())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
