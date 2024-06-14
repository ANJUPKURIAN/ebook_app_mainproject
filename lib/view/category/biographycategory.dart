import 'package:ebook_app_mainproject/view/category/widget/biobookcard.dart';
import 'package:ebook_app_mainproject/view/dummy_db.dart';
import 'package:ebook_app_mainproject/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class BioGraphyCategory extends StatelessWidget {
  const BioGraphyCategory({super.key});

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
        title: Text("Biographys",
        style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black87),
        ),
      ),

      body: ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

        itemBuilder: (context, index) => BioBookCard
        (
        bookName: DummyDb.biographyList[index]['bookName'],
        author: DummyDb.biographyList[index]['author'],
        rating: DummyDb.biographyList[index]['rating'],
        count: DummyDb.biographyList[index]['count'],
        bookPic: DummyDb.biographyList[index]['bookPic'],
       ),
    separatorBuilder: (context, index) => Divider(
          color: Colors.black.withOpacity(.1),
          indent: 30,
          endIndent: 30,
      ),
      itemCount: DummyDb.biographyList.length
      ),
    );
  }
}