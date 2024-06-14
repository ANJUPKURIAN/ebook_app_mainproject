import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails(
      {
        super.key,
         required this.criteria,
          required this.detail
          });
          
  final String criteria;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 60, 
        child: Text(criteria)),
        SizedBox(width: 50),
        Text(
          detail,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}