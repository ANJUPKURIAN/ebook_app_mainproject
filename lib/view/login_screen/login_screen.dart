//import 'package:ebook_app_mainproject/view/home_screen/home_screen.dart';
import 'package:ebook_app_mainproject/controller/login_screen_controller.dart';
//import 'package:ebook_app_mainproject/controller/registration_screen_controller.dart';
import 'package:ebook_app_mainproject/view/home_screen/home_screen.dart';
import 'package:ebook_app_mainproject/view/registration_screen/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login now",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 50,
              ),

              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),

              SizedBox(
                height: 40,
              ),

              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                        obscureText: true,
              ),

              SizedBox(
                height: 40,
              ),

              ElevatedButton(onPressed: () async{
                if (emailController.text.isNotEmpty &&
                      passwordController.text.isNotEmpty) {
                    // registration funciton
                    context
                        .read<LoginScreenController>()
                        .onLogin(
                            context: context,
                            email: emailController.text,
                            password: passwordController.text)
                        .then((value) {
                      if (value == true) {
                        // login success
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.green,
                            content: Text("Login Success")));
               Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) => HomeScreen(),
                         ),
                            (route) => false);
                      } else {
                        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        //     backgroundColor: Colors.red,
                        //     content: Text("Registration Failed")));
                      }
                  }
                 // )
                 );
                } 
                else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Enter a valid email and password")));
                  }
             }, 
              child: Text("Login")),
              SizedBox(
                height: 20,
              ),
              Row(
                 mainAxisSize: MainAxisSize.min,
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("don't have an Account?"),
                  TextButton(onPressed: () {
                    Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
                  }, 
                  child: Text("Register now")),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
