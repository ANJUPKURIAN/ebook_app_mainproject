import 'package:ebook_app_mainproject/view/home_screen/modelbook/favoritebookmodels.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});
  // // Assuming you have a list of favorite books
  // final List<Map<String, String>> favoriteBooks = [
  //   {"title": "Book 1", "author": "Author 1"},
  //   {"title": "Book 2", "author": "Author 2"},
  //   // Add more favorite books here
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favotites"),
        centerTitle: true,
         actions: [
          Icon(Icons.arrow_back_outlined),
          ],
      ),

      body: FavoriteBookModels().favoriteBooks.isNotEmpty
          ? ListView.builder(
              itemCount: FavoriteBookModels().favoriteBooks.length,
              itemBuilder: (context, index) {
                var book = FavoriteBookModels().favoriteBooks[index];
                return ListTile(
                  leading: Image.network(
                    book['image']!,
                    width: 50,
                    height: 75,
                    fit: BoxFit.cover,
                  ),
                  title: Text(book['book']!),
                  subtitle: Text('by ${book['name']}'),
                );
              },
            )
          : Center(
              child: Text('No favorite books added yet.'),
            ),
    );
  }
}