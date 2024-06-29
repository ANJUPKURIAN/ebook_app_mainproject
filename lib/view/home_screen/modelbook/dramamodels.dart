import 'package:flutter/material.dart';
//import 'package:hive/hive.dart';

class DramaModels extends StatelessWidget {
   DramaModels( // remove const
    {
      super.key,
    required this.bookName,
   required this.author,
   required this.rating,
  required this.count,
  required this.bookPic,
   //required this.pdfUrl,

  });

  final String bookName;
  final String author;
  final String rating;
  final String count;
  final String bookPic;
   // final String pdfUrl;

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
                Text('$rating ($count k views)'),
              ],
            ),
          ],
        ),
 ),
 
 );
  }
}

   
   