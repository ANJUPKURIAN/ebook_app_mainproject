import 'package:ebook_app_mainproject/view/dummy_db.dart';
import 'package:ebook_app_mainproject/view/home_screen/booktabs/dramapage.dart';
import 'package:ebook_app_mainproject/view/home_screen/home_screen.dart';
import 'package:ebook_app_mainproject/view/home_screen/modelbook/dramamodels.dart';
import 'package:flutter/material.dart';

class DramaCategory extends StatelessWidget {
  const DramaCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: 
                (context)=>HomeScreen()));
          },
          child: Icon(
            Icons.arrow_back)),
        centerTitle: true,
        title: Text("Dramas",
        style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black87),
        ),
      ),

     body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        itemBuilder: (context, index) {
          var book = DummyDb.dramaList[index];
        return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DramaPage(
                    bookName: book['bookName'],
                    author: book['author'],
                    rating: book['rating'],
                    count: book['count'],
                    bookPic: book['bookPic'],
                    description: book['description'],
                    pdfUrl: book['pdfUrl'],

                 ),
                ),
              );
            },
            child: DramaModels(
              bookName: book['bookName'],
              author: book['author'],
              rating: book['rating'],
              count: book['count'],
              bookPic: book['bookPic'],
           ),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: Colors.black.withOpacity(.1),
          indent: 30,
          endIndent: 30,
        ),
        itemCount: DummyDb.dramaList.length,
      ),
 );

  }
}































    
    