//import 'package:ebook_app_mainproject/view/home_screen/home_screen.dart';
import 'package:ebook_app_mainproject/view/home_screen/home_screen.dart';
import 'package:ebook_app_mainproject/view/registration_screen/registration_screen.dart';
import 'package:flutter/material.dart';

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
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(onPressed: () {

                Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
              }, 
              child: Text("Login")),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("don't have an Account?"),
                  TextButton(onPressed: () {
                    Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
                  }, child: Text("Register now")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
