import 'package:ebook_app_mainproject/view/category/widget/lovebookcard.dart';
import 'package:ebook_app_mainproject/view/dummy_db.dart';
import 'package:ebook_app_mainproject/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class LoveCategory extends StatelessWidget {
  const LoveCategory({super.key});

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
        title: Text("LoveStorys",
        style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black87),
        ),
      ),

      body: ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

        itemBuilder: (context, index) => LoveBookCard
        (
        bookName: DummyDb.lovestoryList[index]['bookName'],
        author: DummyDb.lovestoryList[index]['author'],
        rating: DummyDb.lovestoryList[index]['rating'],
        count: DummyDb.lovestoryList[index]['count'],
        bookPic: DummyDb.lovestoryList[index]['bookPic'],
       ),
    separatorBuilder: (context, index) => Divider(
          color: Colors.black.withOpacity(.1),
          indent: 30,
          endIndent: 30,
      ),
      itemCount: DummyDb.lovestoryList.length
      ),
    );
  }
}