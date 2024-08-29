import 'dart:async';

import 'package:flutter/material.dart';

import 'calculatorapp.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    
    super.initState();

    Timer(
         Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => calculatorapp(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Container(
        

       child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
   
        children: [
        
        //  Image.asset("assets/images/c.jpg",height: 300,width: 500,),
       Icon(Icons.calculate_outlined,size: 100,color: Colors.white,),
        SizedBox(height: 30,),
          Text("Calculator",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          ),
        
        ],
        
       )
      ),
      )
    );
  }
}
