import 'package:ebook_app_mainproject/view/login_screen/login_screen.dart';
import 'package:ebook_app_mainproject/controller/registration_screen_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final providerobj = context.watch<RegistrationScreenController>();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Register now ",
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

              providerobj.isLoading
              ? CircularProgressIndicator()
              : ElevatedButton(
                  onPressed: () async {
                   
                    if (emailController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty) {
                        // registration funciton
                        context
                            .read<RegistrationScreenController>()
                            .register(
                                context: context,
                                email: emailController.text,
                                password: passwordController.text)
                            .then((value) async {
                          final user = FirebaseAuth.instance.currentUser;

                          await user?.updateDisplayName("Anju");
                          await user?.updatePhotoURL(
                              "https://example.com/jane-q-user/profile.jpg");

                           if (value == true) {
                            // login success
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.green,
                                content: Text("Registration Success")));


                        Navigator.pushAndRemoveUntil(
                          context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                          ),
                         (route) => false);
                          } else {
                             // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            //     backgroundColor: Colors.red,
                            //     content: Text("Registration Failed")));
                          }
                            });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.red,
                            content: Text("Enter a valid email and password")));
                          }
                  },
                  child: Text("Register")),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an Account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text("Login now")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

