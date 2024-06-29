
import 'package:dio/dio.dart';
import 'package:ebook_app_mainproject/view/home_screen/lovewidget/lovestorypages.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';


class LovestoryPage extends StatelessWidget {
  const LovestoryPage(
  {
      //super.key,
      Key ? key,
    required this.bookName,
    required this.author,
    required this.rating,
    required this.count,
    required this.bookPic,
    required this.description,
    required this.pdfUrl,

  }
  );

  final String bookName;
  final String author;
  final String rating;// double  may use
  final String count;// int  may use
  final String bookPic;
  final String description;
  final String pdfUrl;

// for download pdf using dio package

Future<void> _downloadFile(BuildContext context) async {
    try {
      var dio = Dio();
      var dir = await getApplicationDocumentsDirectory();
      String savePath = '${dir.path}/$bookName.pdf';

      await dio.download(pdfUrl, savePath, onReceiveProgress: (received, total) {
        if (total != -1) {
          print((received / total * 100).toStringAsFixed(0) + "%");
        }
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Download completed: $savePath")),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Download failed: $e")),
      );
    }
  }






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

       
      ],
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
                  // Add your read book 
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoveStorypages(
                          bookName: bookName,
                          pdfUrl: pdfUrl,
                        ),
                      ),
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




































     