// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class calculatorapp extends StatefulWidget {
  const calculatorapp({super.key});

  @override
  State<calculatorapp> createState() => _calculatorappState();
}

class _calculatorappState extends State<calculatorapp> {
  int firstnum = 0;
  int secondnum = 0;
  String output = "0";
  String _output = "0";
  String oprand = "";
  buttonpressed(String btntext) {
    if (btntext == "AC") {
      _output = "0";
      firstnum = 0;
      secondnum = 0;
      oprand = "";}
       else if (btntext== "Del"){
        _output = _output.substring(0,_output.length-1);
       
    } else if (btntext == "+" ||
        btntext == "-" ||
        btntext == "x" ||
        btntext == "/" ||
        btntext == "%" ||
        btntext == "+/-") {
      firstnum = int.parse(output);
      oprand = btntext;

      _output = "";
    } else if (btntext == ".") {
      if (_output.contains(".")) {
        return;
      } else {
        _output = _output + btntext;
      }
    } else if (btntext == "=") {
      secondnum = int.parse(output);
      if (oprand == "+") {
        _output = (firstnum + secondnum).toString();
      }
      if (oprand == "-") {
        _output = (firstnum - secondnum).toString();
      }
      if (oprand == "x") {
        _output = (firstnum * secondnum).toString();
      }
      if (oprand == "%") {
        _output = (firstnum % secondnum).toString();
      }
      if (oprand == "/") {
        _output = (firstnum / secondnum).toString();
      }
      if (oprand == "+/-") {
        _output = (-firstnum).toString();
      }
      firstnum = 0;
      secondnum = 0;
      oprand = "";
    } else {
      _output = _output + btntext;
    }
    setState(() {
      output = int.parse(_output).toString();
    });
  }

  Widget custombtn(String btntext) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          print("you clicked this buttton");
          setState(() {
            buttonpressed(btntext);
          });
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          shadowColor: Colors.green,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        ),
        child: Text(
          btntext,
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculator"),
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 35),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: 5,
                  width: 5,
                ),
                Expanded(
                    child: Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    output,
                    style: TextStyle(
                        fontSize: 70,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )),
                Row(
                  children: <Widget>[
                    custombtn("AC"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    custombtn("Del"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    custombtn("+/-"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    custombtn("/"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                  width: 5,
                ),
                Row(
                  children: <Widget>[
                    custombtn("7"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    custombtn("8"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    custombtn("9"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    custombtn("x"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                  width: 5,
                ),
                Row(
                  children: <Widget>[
                    custombtn("4"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    custombtn("5"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    custombtn("6"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    custombtn("-"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                  width: 5,
                ),
                Row(
                  children: <Widget>[
                    custombtn("1"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    custombtn("2"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    custombtn("3"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    custombtn("+"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                  width: 5,
                ),
                Row(
                  children: <Widget>[
                    custombtn("%"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    custombtn("0"),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    custombtn("."),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    custombtn("="),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
