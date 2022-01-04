import 'dart:async';
import 'package:assignment/routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff3647B2),
            Color(0xff03528A),
            Color(0xff3647B2),
            Color(0xff03528A),
            Color(0xff3647B2),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpPKtGFn9MNHxr2l3tZmB8-ZBru59QO70dxw&usqp=CAU", height: 200, width: 200,),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Get.toNamed(Routes.countryScreen);
            }, child: Text("Next"))
          ],
        ),
      ),
    );
  }
}
