
import 'package:flutter/material.dart';
//import 'package:get/get.dart';


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
      ],
    ),
  ),
  ),








      // body: Padding(
      //   padding: const EdgeInsets.all(20),
      //   child: Column(
      //     children: [
      //       Container(
      //         decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(10),
      //             color: Color(0xffffe576)),
      //         padding: EdgeInsets.all(10),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             Container(
      //                 height: 150,
      //                 width: 150,
      //                 child: Image.network(
      //                     "https://p1.hiclipart.com/preview/702/417/143/gift-food-shopping-cart-food-gift-baskets-grocery-store-health-food-flowerpot-home-accessories-png-clipart.jpg")),
      //             RichText(
      //                 textAlign: TextAlign.center,
      //                 text: TextSpan(
      //                     text: "organic",
      //                     style: TextStyle(
      //                         color: Colors.black,
      //                         fontSize: 40,
      //                         fontWeight: FontWeight.bold),
      //                     children: [
      //                       TextSpan(
      //                           text: "\nvegetables",
      //                           style: TextStyle(
      //                               fontSize: 20, fontWeight: FontWeight.w500))
      //                     ]))
      //           ],
      //         ),
      //       ),
      //       SizedBox(height: 20),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Text(
      //             "category",
      //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      //           ),
      //           Text(
      //             "View all",
      //             style: TextStyle(
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 15,
      //                 color: Color(0xff288d63)),
      //           )
      //         ],
      //       ),
          
          
    );
  }
}
  


