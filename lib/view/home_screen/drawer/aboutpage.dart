import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        centerTitle: true,
        actions: [
          Icon(Icons.arrow_back_outlined),
          ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Text("Welcome to the App!\n\n" 
          "This app provides a set of books in various categories including Drama, Biography, Love Story, and Classic."
          "Our mission is to make reading accessible and enjoyable for everyone.\n\n"
            "Features:\n"
            "- Browse books by category\n"
            "- Search for your favorite books\n"
            "- View trending and recommended books\n"
            "- Save your favorite books\n"
            "- Download books for offline reading\n\n"
            "We hope you enjoy using our app and find the books you love.",
          textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          ),
      ),
    );
  }
}