import 'package:flutter/material.dart';
//import 'package:get/get.dart';

class DramaPage extends StatelessWidget {
  const DramaPage(
  {
      super.key,
    required this.bookName,
    required this.author,
    required this.rating,
    required this.count,
    required this.bookPic,

  }
  );

  final String bookName;
  final String author;
  final String rating;
  final String count;
  final String bookPic;

  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
       title:Text(bookName),
       leading: IconButton(
        icon:Icon(
           Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
        ),
      ),
    
    body:Padding(
    padding: EdgeInsets.all(16.0),
       child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
            Row(
              children: [
                Image.network(
                  bookPic,
                  width: 100, // Set a fixed width for the image
                  height: 150, // Set a fixed height for the image
                  fit: BoxFit.cover, // Fit the image within the given dimensions
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bookName,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'by $author',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 8),
                          Text(
                            '$rating ($count reviews)',
                            style: TextStyle(fontSize: 16),
                        ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(" Macbeth is a tragedy that tells the story of a soldier whose overriding ambition and thrist for power cause him to abandon his morals and bring about the near destruction of the kingdom he seeks to rule",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}




































     