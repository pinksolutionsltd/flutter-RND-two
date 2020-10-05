import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myrndtwo/green_page.dart';
import 'package:myrndtwo/red_page.dart';
import 'package:myrndtwo/yellow_page.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  showExitPopup(){
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text('Confirmation'),
            content: Text('Do you want to Exit?'),
            actions: [
              RaisedButton(
                child: Text('No'),
                color: Colors.white,
                onPressed: (){
                  Navigator.pop(context);
                },
              ),

              RaisedButton(
                child: Text('Yes'),
                color: Colors.white,
                onPressed: (){
                  SystemNavigator.pop();
                },
              ),

            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        showExitPopup();
      },
      child: Scaffold(
        appBar: AppBar(title: Text('My RND'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              RaisedButton(
                color: Colors.green,
              child: Text('Go to Green'),
              onPressed: (){
                  Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> GreenPage())
                );
              },
              ),

              Divider(),

              RaisedButton(
                color: Colors.yellow,
                child: Text('Go to Yellow'),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> YellowPage())
                  );
                },
              ),

              Divider(),

              RaisedButton(
                color: Colors.red,
                child: Text('Go to Red'),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> RedPage())
                  );
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
