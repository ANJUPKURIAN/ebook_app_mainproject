import 'package:ebook_app_mainproject/view/bookscreen/widget/bookdetails.dart';
import 'package:ebook_app_mainproject/view/checkoutscreen/checkoutscreen.dart';
import 'package:flutter/material.dart';
class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Book Details",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black38)),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.greenAccent.shade100,
                      ),
                      child: Icon(Icons.refresh),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                          "Assets/Images/A tale of two cities.jpg"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        5,
                        (index) => Row(
                          children: [
                            CircleAvatar(
                                radius: index != 2 ? 3 : 5,
                                backgroundColor:
                                    index != 2 ? Colors.black26 : Colors.green),
                            SizedBox(width: 5)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "A  Tale of two cities",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        color: Colors.green,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "4.4 ",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(Icons.star, color: Colors.white, size: 15),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "95 ratings",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "Charles Dickens",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                          //     children: [
                          //   TextSpan(
                          //     text: "\$28 ",
                          //     style: TextStyle(
                          //         decoration: TextDecoration.lineThrough,
                          //         decorationThickness: 3,
                          //         fontWeight: FontWeight.bold,
                          //         fontSize: 15),
                          //   ),
                          //   TextSpan(
                          //     text: " 5% off",
                          //     style: TextStyle(
                          //         color: Color(0xff288d63),
                          //         fontWeight: FontWeight.w500,
                          //         fontSize: 15),
                          //   )
                          // ]
                          )
                          ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black38)),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Details",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Divider(),
                  BookDetails(criteria: "Name", detail: "A Tale of two cities"),
                  SizedBox(height: 15),
                  BookDetails(criteria: "Type", detail: "Classic"),
                  SizedBox(height: 15),
                  BookDetails(criteria: "Author", detail: "Charles Dickens"),
                  SizedBox(height: 15),

                Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "More Details",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.green),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.greenAccent.shade100,
              ),
              child: Icon(Icons.favorite_border, size: 25),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutScreen(),
                    ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 110),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green),
                child: Text(
                  "ADD TO CART",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}