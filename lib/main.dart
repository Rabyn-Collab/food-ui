import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_ui/screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


//SysChrome.setPrefOr
//[DevO.pU, DevO.pD]


void main (){


 SystemChrome.setPreferredOrientations([
   DeviceOrientation.portraitUp,
   DeviceOrientation.portraitDown
 ]);

  runApp(Home());
}

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
       designSize: Size(411, 866),
      builder:() =>  GetMaterialApp(
          debugShowCheckedModeBanner: false,
            theme: ThemeData(
              inputDecorationTheme: InputDecorationTheme(
                focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide(color: Colors.orange, width: 1.w)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.orange, width: 1.w)
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
              ),
              primaryColor: Colors.deepOrangeAccent
            ),
            home: HomeScreen()

      ),
    );
  }
}


