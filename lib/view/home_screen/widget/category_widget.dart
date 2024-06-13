import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
         color: Colors.lightBlue[400]),
       padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 70,
            child: Text(
              "Drama",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
      




      ],
      ),
    );
  }
}