import 'package:ebook_app_mainproject/view/category/widget/classicbookcard.dart';
import 'package:ebook_app_mainproject/view/dummy_db.dart';
import 'package:ebook_app_mainproject/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class ClassicCategory extends StatelessWidget {
  const ClassicCategory({super.key});

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
        title: Text("Classics",
        style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black87),
        ),
      ),

      body: ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

        itemBuilder: (context, index) => ClassicBookCard
        (
        bookName: DummyDb.classicList[index]['bookName'],
        author: DummyDb.classicList[index]['author'],
        rating: DummyDb.classicList[index]['rating'],
        count: DummyDb.classicList[index]['count'],
        bookPic: DummyDb.classicList[index]['bookPic'],
       ),
    separatorBuilder: (context, index) => Divider(
          color: Colors.black.withOpacity(.1),
          indent: 30,
          endIndent: 30,
      ),
      itemCount: DummyDb.classicList.length
      ),
    );
  }
}