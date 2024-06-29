import 'package:ebook_app_mainproject/firebase_options.dart';
import 'package:ebook_app_mainproject/view/home_screen/modelbook/favoritebookmodels.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ebook_app_mainproject/controller/login_screen_controller.dart';
import 'package:ebook_app_mainproject/controller/registration_screen_controller.dart';
import 'package:ebook_app_mainproject/view/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:hive/hive.dart';
//import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';


void main() async {
 WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
 );
  // Initialize Hive
 //await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
     providers: [
        ChangeNotifierProvider(
          create: (context)=>RegistrationScreenController(),
        ),
         ChangeNotifierProvider(
          create: (context)=>LoginScreenController(),
        ),
         ChangeNotifierProvider(
          create: (context)=>FavoriteBookModels(),
        ),
      ],
      child: MaterialApp(
      home: StreamBuilder(
       stream: FirebaseAuth.instance.authStateChanges(),
       builder: (context,snapshot){
        if(snapshot.hasData){
         return SplashScreen(
          isAlreadyLogged: true,
         );
        }
        else{
          return SplashScreen();
        }
       }
       ),
      ),


    );
  }
}
