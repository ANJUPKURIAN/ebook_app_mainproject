import 'package:ebook_app_mainproject/view/home_screen/dramawidget/dramastorypage.dart';
import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DramaPage extends StatelessWidget {
  
  const DramaPage({
        Key? key,
    // super.key,
    required this.bookName,
    required this.author,
    required this.rating,
    required this.count,
    required this.bookPic,
    required this.description,
    required this.pdfUrl,
  })
  : super(key: key);
  

  final String bookName;
  final String author;
  final String rating;
  final String count;
  final String bookPic;
  final String description;
  final String pdfUrl;

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
        
        actions: [
          IconButton(
            icon: Icon(Icons.download_outlined),
            onPressed: (){
            // Add your download 
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Download"))
            );
            },
          ),

        //  IconButton(
        //   icon: Icon(Icons.book_outlined),
        //   onPressed: () {
        //     // Add your read book 
        //     ScaffoldMessenger.of(context).showSnackBar(
        //       SnackBar(content: Text("Read Book"))
        //     );
        //   },
        // ),
      ], // actions
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
      // book icon after description
         SizedBox(height: 16), // Add some space before the new Row
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.book_outlined),
                onPressed: () {
                 Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DramaStoryPage(
                          bookName: bookName,
                          pdfUrl: pdfUrl,
                        ),
                      ),
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(content: Text("Could not open the book")),
                  );
                },
              ),
              Text(
                "Read",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
         ],
        ),
      ),
    );
  }
}




































     