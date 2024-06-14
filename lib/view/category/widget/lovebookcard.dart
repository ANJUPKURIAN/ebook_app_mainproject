import 'package:flutter/material.dart';

class LoveBookCard extends StatelessWidget {
  const LoveBookCard(
    {super.key,
  required this.bookName,
  required this.author,
  required this.rating,
  required this.count,
 required this.bookPic,

  });

  final String bookName;
  final String author;
  final String rating;
  final String count;
  final String bookPic;
   
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      //InkWell(
       // onTap: (){
         // Navigator.pushNamed(context,"chatpage");
       // },
      //),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(bookPic),
                radius: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text(bookName),
                  SizedBox(
                    height: 10,
                  ),
                  Text(author),
                 SizedBox(height: 10),
                  Text(count),
                ],
              ),
            ],
          ),
          Column(
            children: [
           Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
                4, (index) => Icon(Icons.star, color: Colors.blue, size: 10)),
          ),

          SizedBox(height: 10),

            Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
                1, (index) => Icon(Icons.favorite_border_outlined, color: Colors.blue, size: 10)),
          ),

           
            ],
          ),
        ],
      ),
    );
  }
}