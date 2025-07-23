import 'dart:async';

import 'package:flutter/material.dart';

import '../../utils/app_routes.dart';
import '../signup/sign_up_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration (seconds: 3), (){
      Navigator.pushReplacementNamed(context, AppRoutes.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/app_image/logo.png"),
                SizedBox(width: 15,),
                Text('Monety',style: TextStyle(
                  color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
