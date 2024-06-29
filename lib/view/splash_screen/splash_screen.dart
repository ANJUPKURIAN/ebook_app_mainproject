import 'package:ebook_app_mainproject/view/home_screen/home_screen.dart';
import 'package:ebook_app_mainproject/view/login_screen/login_screen.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key,this.isAlreadyLogged = false});
  final bool isAlreadyLogged;// for show splashscreen

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4)).then((value)
     {
      if(widget.isAlreadyLogged){
         Navigator.pushReplacement(context,MaterialPageRoute(
         builder: (context)=>HomeScreen(),
      ));

      } else {
          Navigator.pushReplacement(context,MaterialPageRoute(
         builder: (context)=>LoginScreen(),
      ));

    }
     });

    super.initState();
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(" Enjoy  Reading!"),
      ),

   body: Center(
       child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfR8hcgpkoA2HNSHjzwgiSbg414CqPvQze9w&s"),    
      ),
    );
  }
}