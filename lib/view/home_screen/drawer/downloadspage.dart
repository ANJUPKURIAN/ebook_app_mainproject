import 'package:flutter/material.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Downloads"),
        centerTitle: true,
        actions: [
          Icon(Icons.arrow_back_outlined),
          ],
      ),
      body: Center(

      ),
    );
  }
}