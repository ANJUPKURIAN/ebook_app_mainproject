import 'package:flutter/material.dart';
//import 'package:get/get.dart';

class LovestoryPage extends StatelessWidget {
  const LovestoryPage(
  {
      super.key,
    required this.bookName,
    required this.author,
    required this.rating,
    required this.count,
    required this.bookPic,
    required this.description,

  }
  );

  final String bookName;
  final String author;
  final String rating;
  final String count;
  final String bookPic;
  final String description;

  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade400,
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
                            '$rating ($count k views)',
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
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}




































     