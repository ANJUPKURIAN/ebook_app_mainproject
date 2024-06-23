import 'package:ebook_app_mainproject/model/trendingmodel.dart';
import 'package:ebook_app_mainproject/view/dummy_db.dart';
import 'package:ebook_app_mainproject/view/home_screen/booktabs/lovestorypage.dart';
import 'package:flutter/material.dart';


class TrendingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          DummyDb.trendingList.length,
          (index) {
            var book = DummyDb.trendingList[index];
            return Row(
              children: [
                InkWell(
                  onTap: () {
                     // Debug: print the values being passed
                    //print('Navigating to LoveStoryPage with book: $book');
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>LovestoryPage (
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
                  child: TrendingModel(
                    
                    book: book['book'],
                    name: book['name'],
                    rate: book['rate'],
                    views: book['views'],
                    image: book['image'],
                    isFavorite: book['favorite'],

                  ),
                ),
                SizedBox(width: 15),
              ],
            );
          },
        ),
      ),
    );
  }
}