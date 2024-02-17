import 'package:flutter/material.dart';

class MyCalc extends StatefulWidget {
  const MyCalc({Key? key}) : super(key: key);

  @override
  State<MyCalc> createState() => _MyCalcState();
}

class _MyCalcState extends State<MyCalc> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
 double h_value=0;
 double w_value=0;
 double result=0;
  void calculate(){
  h_value=double.parse(height.text)/100;
  w_value=double.parse(weight.text);
  result=w_value/(h_value*h_value);
  print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextField(controller: height,
          decoration: InputDecoration(filled: true,
        fillColor: Colors.white,hintText: "Enter your height",
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              width: 3,
              color: Colors.black,
            ),borderRadius: BorderRadius.circular(50)),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        TextField(controller: weight,
          decoration: InputDecoration(filled: true,
            fillColor: Colors.white,hintText: "Enter your weight",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 3,
                color: Colors.black
              ),borderRadius: BorderRadius.circular(50)
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        TextButton(style: TextButton.styleFrom(backgroundColor: Colors.green),onPressed: () {calculate();}, child: Text(style:TextStyle(color: Colors.black),'calculate')), SizedBox(
          height: 30,
        ),
        Text('result')
      ]),
      backgroundColor: Colors.grey,
    );
  }
}
