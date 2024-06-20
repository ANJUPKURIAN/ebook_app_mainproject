//import 'package:ebook_app_mainproject/model/trendingmodel.dart';
import 'package:ebook_app_mainproject/view/category/biographycategory.dart';
import 'package:ebook_app_mainproject/view/category/classiccategory.dart';
import 'package:ebook_app_mainproject/view/category/dramacategory.dart';
import 'package:ebook_app_mainproject/view/category/lovecategory.dart';
import 'package:ebook_app_mainproject/view/home_screen/widget/recommendedwidget.dart';
import 'package:ebook_app_mainproject/view/home_screen/widget/trending_widget.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
// total book list available
    List<Map<String, String>> books = [
     {'bookName': 'Macbeth', 'author': 'William Shakespeare','category':'drama'},
     {'bookName': 'The Fault in Our Stars', 'author': 'John Green','category':'drama' },
     {'bookName': 'Death of a Salesman', 'author': 'Arthur Miller','category':'drama'},
     {'bookName': 'The Twelth Night', 'author': 'William Shakespeare','category':'drama'},

    {'bookName': 'Wings of Fire', 'author': 'APJ Abdul Kalam','category':'biography'},
    {'bookName': 'The Diary of a Young Girl', 'author': 'Anne Frank','category':'biography'},
    {'bookName': 'CV Raman', 'author': 'Uma Parameswaran','category':'biography'},
    {'bookName': 'Husain: Portrait of an Artist', 'author': 'Ila Pal','category':'biography'},

    {'bookName': 'Anna Karenina', 'author': 'Leo Tolstoy','category':'lovestory'},
    {'bookName': 'Pride and Prejudice', 'author': 'Jane Austen','category':'lovestory'},
    {'bookName': 'Romeo and Juliet', 'author': 'William Shakespeare','category':'lovestory'},
    {'bookName': 'Something Borrowed', 'author': 'Emily Giffin','category':'lovestory'},

    {'bookName': 'A Tale of Two Cities', 'author': 'Charles Dickens','category':'classic'},
    {'bookName': 'The Secret Garden', 'author': 'Frances Hodgson Burnett','category':'classic'},
    {'bookName': 'The Three Men in a Boat', 'author': 'Jerome k.Jerome','category':'classic'},
    {'bookName': 'A Christmas Carol', 'author': 'charles Dickens','category':'classic'}, // Add more books here
 ];
 // filtering book with letter
 List<Map<String, String>> filteredBooks = [];
  String searchQuery = '';
  @override
  void initState() {
    super.initState();
    filteredBooks = books;
  }
// update search according to letter after search
 void updateSearchQuery(String query) {
    setState(() {
      searchQuery = query;
      filteredBooks = books.where((book) {
        return book['bookName']!.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }
 // main code
 @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        centerTitle: true,
        title: Text("Book Store"),
        toolbarHeight: 100,
        leading: Icon(
          Icons.menu, 
          color: Colors.black
          ),
          
       actions: [ 
            CircleAvatar(
             backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/1772475/pexels-photo-1772475.jpeg?auto=compress&cs=tinysrgb&w=600"),
            ),
       ],
       ),

   // search textfield
  body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 18),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(8),
            ),
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.all(8),
            hintText: "search your favorite book",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
            ),
         ),
      onChanged: updateSearchQuery,
    ),

     SizedBox(height: 8),
      // search results or no results message
       searchQuery.isNotEmpty
            ? filteredBooks.isNotEmpty
            ? Column(
            children: List.generate(filteredBooks.length, (index) {
            var book = filteredBooks[index];
            return ListTile(
              title: Text(book['bookName']!),
              subtitle: Text(book['author']!),
              );
              }),
              )
              : Center(
            child: Text("No results found"),
             )
          : Container(),

 // for category
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color:  Colors.black),
                )
              ],
            ),
      
      SizedBox(height: 8),
     
  Container(
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: 
                (context)=>DramaCategory()));
                },
              child: Container(
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.lightBlue,
                  ),
                  child: Text("Drama",                  
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                   color: Colors.white,
                  ),
                  ),
              ),
              ),
            ),

          // 2.box
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                   Navigator.push(context,
                MaterialPageRoute(builder: 
                (context)=>BiographyCategory()));
                },
              child: Container(
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.lightBlue,
                  ),
                  child: Text("BioGraphy",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                   color: Colors.white,
                  ),
                  ),
              ),
              ),
            ),
       // 3.box
         Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                   Navigator.push(context,
                MaterialPageRoute(builder: 
                (context)=>LoveCategory()));
                },
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.lightBlue,
                  ),
                  child: Text("LoveStory",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                   color: Colors.white,
                  ),
                  ),
              ),
              ),
            ),
          // 4.box
           Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                 Navigator.push(context,
                MaterialPageRoute(builder: 
                (context)=>ClassicCategory()));
                },
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.lightBlue,
                  ),
                  child: Text("Classic",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                   color: Colors.white,
                  ),
                  ),
              ),
              ),
            ),
          ],
        ),
       ),


   // 2nd row trending list
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Trending",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black87),
                ),
                
              ],
            ),
       
       SizedBox(height: 10),
       SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      3,
                      (index) => Row(
                            children: [
                              InkWell(
                                  onTap: () {},
                                  child: TrendingWidget()),
                              SizedBox(width: 15)
                            ],
                          )),
                )),


 // 2nd row recommended list
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black87),
                )
              ],
            ),
       
       SizedBox(height: 10),
       SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      3,
                      (index) => Row(
                            children: [
                              InkWell(
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) => ProductScreen(),
                                    //     ));
                                  },
                                  child: RecommendedWidget()),
                              SizedBox(width: 15)
                            ],
                          )),
                )),
],
   ),
  ),
  ),
  );

 }
}
  


