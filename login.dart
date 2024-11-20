import 'package:auth_flutter/views/layouts/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      
      appBar:const AppBarCustom(title: 'ورود',),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Center(
             child: Image.asset('assets/images/1.png'
             ,width: 200,),
           ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: const Text('لطفا شماره خود را وارد کنید.'),
            ),
             Padding(
               padding: const EdgeInsets.only(bottom: 10),
               child: const Text('پیامک به این شماره ارسال خواهد شد:'),
             ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'شماره موبایل را وارد کنید.',
                hintStyle: TextStyle(fontSize: 13),

              ),
            ),
            SizedBox(height: 20,),
            Center(child: ElevatedButton(onPressed: (){
              Get.toNamed('/login/otp');
            }, child:const Text('مرحله بعد'))),
        
          ],
        ),
      ),
    ));
  }
}