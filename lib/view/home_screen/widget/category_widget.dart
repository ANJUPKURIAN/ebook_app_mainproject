import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
     required this.image,
    required this.categoryName,
    });

    final String image;
    final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Container(
    padding:EdgeInsets.all(10),
    child: Column(
       children:[
           //# 1 stack
       Stack(
        alignment:AlignmentDirectional.center,
         children:[
          SizedBox
            (
             height:110,
            ),
            Container(
              padding: EdgeInsets.all(3),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                     gradient:
                      LinearGradient(end: Alignment.bottomRight,
                       colors: [
                      Colors.lightBlue,
                     ]
                     )
                     ),

                child: Container(
                  padding: EdgeInsets.all(3),
                   decoration: BoxDecoration(
                    color: Colors.black87,
                    shape: BoxShape.rectangle,
                  ),
                 
                ),
              ),

         SizedBox(height: 3),
          // #2
          Text(categoryName)
        ],
      ), 
    ],
    ), 
   );
  }
}














  

      //  decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //    color: Colors.lightBlue[400]),
      //  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      // child: Column(
      //   children: [
      //     Container(
      //       height: 50,
      //       width: 70,
      //       child: Text(
      //         "Drama",
      //         textAlign: TextAlign.center,
      //         style: TextStyle(
      //           fontSize: 20,
      //           fontWeight: FontWeight.w500,
      //           color: Colors.black,
      //         ),
      //       ),
      //     ),
      //   ],
      //),



      
  