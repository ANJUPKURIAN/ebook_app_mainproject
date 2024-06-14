import 'package:ebook_app_mainproject/view/category/widget/bookcard.dart';
import 'package:ebook_app_mainproject/view/dummy_db.dart';
import 'package:ebook_app_mainproject/view/home_screen/home_screen.dart';
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
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

        itemBuilder: (context, index) => BookCard
        (
        bookName: DummyDb.dramaList[index]['bookName'],
       // icon: DummyDb.dramaList[index]['icon'],
        author: DummyDb.dramaList[index]['author'],
        rating: DummyDb.dramaList[index]['rating'],
        count: DummyDb.dramaList[index]['count'],
        bookPic: DummyDb.dramaList[index]['bookPic'],
       ),
    separatorBuilder: (context, index) => Divider(
          color: Colors.black.withOpacity(.1),
          indent: 30,
          endIndent: 30,
      ),
      itemCount: DummyDb.dramaList.length
      ),
    );
  }
}