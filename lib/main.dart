import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
         home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override

  void initState(){
    super.initState();
    Timer(Duration(seconds:5),()=>print("Splash done"),
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit:StackFit.expand,
        children: [
          Container(

            decoration:BoxDecoration(
                 color:Colors.pink,
            ),
          ),
          Column( 
           mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Expanded(
                  
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       CircleAvatar(
                        backgroundColor: Colors.white,
                        radius:50,
                        child:Icon(
                          Icons.shopping_cart,
                          color:Colors.blue,
                          size: 50,
                        ),
                       ),
                      SizedBox(
                        height: 13,
                      ),
                       Text(
                         "Amazon",
                         style:TextStyle(
                           color:Colors.white,
                           fontSize: 27,
                           fontWeight: FontWeight.bold
                         ),
                         )
                    ],
                  ),
                ),
               Expanded(
                 flex:1 ,
                 child:Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       CircularProgressIndicator(),
                SizedBox(
                  height: 13,
                ), 
                Text("One Stop For All...",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                    ),
                ),          
                       
            ],
           ),
           ),   
            ],
          )
        ],
      ),
    );
  }
}