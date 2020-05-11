import 'dart:math';

import 'package:bmicalculator/resultpg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Mainpg());

class Mainpg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: BMICal(),
    );
  }
}

class BMICal extends StatefulWidget {
  @override
  _BMICalState createState() => _BMICalState();
}

class _BMICalState extends State<BMICal> {
  TextEditingController heightcontroller = TextEditingController();
  TextEditingController weightcontroller = TextEditingController();
  int getHt;
  int getWt;
  double hgt;
  double res;
  String getMsg = "";
  String getRes = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.fitness_center,
          size: 30.0,
        ),
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(fontSize: 30.0),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Image(
                image:AssetImage("images/image1.jpg"),

              ),
              SizedBox(
                height: 70.0,
              ),
              TextField(
                controller: heightcontroller,
                decoration: InputDecoration(
                  hintText: "in cm",
                  labelText: "Height",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                controller: weightcontroller,
                decoration: InputDecoration(
                    hintText: "in kg",
                    labelText: "Weight",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: () {
                  getHt = int.parse(heightcontroller.text);
                  getWt = int.parse(weightcontroller.text);
                  hgt = (getHt / 100);
                  res = (getWt / pow(hgt, 2));
                  getRes = "Your BMI is " + (res).toStringAsFixed(2);
                  print(getWt);
                  print(getHt);
                  print(getRes);
                  if (res >= 16.0 && res <= 18.5) {
                    getMsg = "Under Weight!!";
                  } else if (res >= 18.5 && res <= 24.0) {
                    getMsg = "Normal Weight!!";
                  } else if (res >= 24.0 && res <= 30.0) {
                    getMsg = "Over weight!!";
                  } else if (res > 30.0) {
                    getMsg = "Obese!!";
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                        height: getHt,
                        weight: getWt,
                        res: getRes,
                        msg: getMsg,
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(20.0)),
                  height: 50.0,
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    "Calculate",
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  )),
                ),
              ),
              /* SizedBox(
                  height: 30.0,
                ),
               Text(getRes+"\n"+getMsg,style: TextStyle(fontSize: 25.0,color: Colors.black),textAlign: TextAlign.center,)*/
            ],
          ),
        ),
      ),
    );
  }
}
