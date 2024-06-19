
//import 'package:ebook_app_mainproject/view/dummy_db.dart';
//import 'package:ebook_app_mainproject/view/home_screen/booktabs/darama1page.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
   BookCard( // remove const
    {
      super.key,
   required this.bookName,
  required this.author,
  required this.rating,
  required this.count,
 required this.bookPic,

  });

  final String bookName;
  final String author;
  final String rating;
  final String count;
  final String bookPic;
   
  @override
  Widget build(BuildContext context) {

  return Card(
 child: ListTile(
        leading: Image.network(bookPic),
        title: Text(bookName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(author),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                SizedBox(width: 4),
                Text('$rating ($count reviews)'),
              ],
            ),
          ],
        ),
 ),
 
 );
  }
}

    // return Container(
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //     Row(
    //       children: [
    //           CircleAvatar(
    //             backgroundImage: NetworkImage(bookPic),
    //             radius: 50,
    //           ),
    //           SizedBox(
    //             width: 10,
    //           ),
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start, 
    //             children: [
    //               Text(bookName),
    //               SizedBox(
    //                 height: 10,
    //               ),
    //               Text(author),
    //              SizedBox(height: 10),
    //               Text(count),
    //             ],
    //           ),
    //         ],
    //       ),
    //       Column(
    //         children: [
    //        Row(
    //         mainAxisSize: MainAxisSize.min,
    //         children: List.generate(
    //             4, (index) => Icon(Icons.star, color: Colors.blue, size: 10)),
    //       ),

    //       SizedBox(height: 10),

    //         Row(
    //         mainAxisSize: MainAxisSize.min,
    //         children: List.generate(
    //             1, (index) => Icon(Icons.favorite_border_outlined, color: Colors.blue, size: 10)),
    //       ),

           
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  //}
//}