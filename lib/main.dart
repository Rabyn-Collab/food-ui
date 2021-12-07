import 'package:flutter/material.dart';
import 'package:food_ui/screens/home_screen.dart';




void main (){

  runApp(Home());
}

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.orange, width: 1)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.orange, width: 1)
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          primaryColor: Colors.deepOrangeAccent
        ),
        home: HomeScreen()
    );
  }
}
