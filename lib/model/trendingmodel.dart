import 'package:ebook_app_mainproject/model/favoritebookmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TrendingModel extends StatefulWidget {
     TrendingModel(
    {
    super.key,
    required this.book,
    required this.name,
    required this.rate,
    required this.image,
    required this.views,
    this.isFavorite = false,

    }
    );

  final String book;
  final String name;
  final String rate;
  final String image;
  final String views;
  final bool isFavorite;

  @override
  State<TrendingModel> createState() => _TrendingModelState();
}

class _TrendingModelState extends State<TrendingModel> {
  late bool isFavorite;

 @override
  void initState() {
    super.initState();
    isFavorite = widget.isFavorite;
  }

  void toggleFavorite() {
    final favoriteBooksProvider = Provider.of<FavoriteBookModel>(context, listen: false);
    favoriteBooksProvider.toggleFavorite({
      'book': widget.book,
      'name': widget.name,
      'rate': widget.rate,
      'image': widget.image,
      'views': widget.views,
    });
    setState(() {
      isFavorite = !isFavorite;
    });
  }


  @override
  Widget build(BuildContext context) {
    final favoriteBooksProvider = Provider.of<FavoriteBookModel>(context);
    isFavorite = favoriteBooksProvider.isFavorite(widget.book);
   return Stack(
     children: [
      Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.image,
              width: 100,
              height: 150,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.book,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('by ${widget.name}'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  SizedBox(width: 4),
                  Text('${widget.rate} (${widget.views}  views)'),
                ],
              ),
            ),
          ],
        ),
      ),

      Positioned(
        top: 8,
        right: 8,
        child: IconButton(
          icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : Colors.grey,
          ),
          onPressed: toggleFavorite,
          ),
          ),
     ],
   );
  }
}


 























      


