import 'package:ebook_app_mainproject/view/home_screen/widget/drama.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
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
        ),

     SizedBox(height: 8),
     // for show books 
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
     
       // for category of books
   // 1.box
       Container(
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {

                },
              child: Container(
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.lightGreen,
                  ),
                  child: Text("Novel",                  
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
                  
                },
              child: Container(
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.lightGreen,
                  ),
                  child: Text("Love",
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
                  
                },
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.lightGreen,
                  ),
                  child: Text("Autobiography",
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
                 (context)=> Drama()));
                },
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.lightGreen,
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
          ],
        ),
       ),
               










     
        
     

     
 ],
   ),
  ),
  ),
  );

 }
}
  


