import 'package:auth_flutter/helper/constance.dart';
import 'package:auth_flutter/views/login/login.dart';
import 'package:auth_flutter/views/login/login_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 250, 250, 250),
        inputDecorationTheme: InputDecorationTheme(
          border: 
         const OutlineInputBorder(),
          contentPadding: EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ConstColor.backgroundAppBar))
         

        ),
        // This is the theme of your application.
        textSelectionTheme:TextSelectionThemeData(
          cursorColor: Colors.black
        ) ,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
         //   backgroundColor: ConstColor.backgroundAppBar
          )
        )
    
      
      ),
      
      textDirection: TextDirection.rtl,
      getPages: [
        GetPage(name: '/login', page: ()=>const Login()),
        GetPage(name: '/login/otp', page:()=>  LoginOtp())
      ],
      initialRoute: '/login',
    );
  }
}

