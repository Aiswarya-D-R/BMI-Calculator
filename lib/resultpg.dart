

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result({this.res, this.height, this.msg, this.weight});

  final int height, weight;
  final String res;
  final String msg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          "RESULT",
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
        leading: Icon(Icons.local_hospital),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50.0,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                height: 50.0,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Height: " + height.toString() + "cm",
                    style: TextStyle(fontSize: 25.0,color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                height: 50.0,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Weight: " + weight.toString() + "kg",
                    style: TextStyle(fontSize: 25.0,color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                height: 80.0,
                width: double.infinity,
                child: Center(
                  child: Text(
                    res+"\n"+msg,
                    style: TextStyle(fontSize: 25.0,color: Colors.white),
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
