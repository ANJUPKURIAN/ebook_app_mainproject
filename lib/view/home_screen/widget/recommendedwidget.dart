import 'package:ebook_app_mainproject/model/recommendedmodel.dart';
import 'package:ebook_app_mainproject/view/dummy_db.dart';
import 'package:ebook_app_mainproject/view/home_screen/booktabs/dramapage.dart';
import 'package:flutter/material.dart';


class RecommendedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          DummyDb.recommendedList.length,
          (index) {
            var book = DummyDb.recommendedList[index];
            return Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>DramaPage (
                    bookName: book['bookName'],
                    author: book['author'],
                    rating: book['rating'],
                    count: book['count'],
                    bookPic: book['bookPic'],
                    description: book['description'],
                        ),
                      ),
                   );
                  },
                  child: RecommendedModel(
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
