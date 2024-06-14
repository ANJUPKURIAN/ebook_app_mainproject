import 'package:flutter/material.dart';

class RecommandedWidget extends StatelessWidget {
  const RecommandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12)),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              color: Colors.greenAccent.shade400,
              child: Icon(Icons.favorite_border),
            ),
          ),
          Center(
            child: Container(
              height: 50,
              width: 50,
              child: Image.asset(
                 "Assets/Images/anna karenina.jpg" ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
                4, (index) => Icon(Icons.star, color: Colors.amber, size: 10)),
          ),
          Text(
            "Macbeth, \n Leo Tolstoy",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(
                      text: "10.2k views ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    ),
                  ),
              // Container(
              //   padding: EdgeInsets.all(5),
              //   color: Colors.lightBlue[400],
              //   child: Icon(Icons.shopping_bag_outlined,
              //       color: Colors.white, size: 15),
              // )
            ],
          )
        ],
      ),
    );
  }
}