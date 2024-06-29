//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DownloadsPage extends StatelessWidget {
    final List<String> downloadedList;

  const DownloadsPage({
    super.key,
    required this.downloadedList,
    });

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

      body: ListView.builder(
        itemCount: downloadedList.length,
        itemBuilder:(context,index){
          return ListTile(
            title: Text(downloadedList[index]),
            onTap: () {
              // Handle book link click
              // For example, open the book link in a webview or browser
            },
          );
        },
        ),
    );
  }
}