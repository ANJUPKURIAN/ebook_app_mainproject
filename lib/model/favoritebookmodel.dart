import 'package:flutter/material.dart';

class FavoriteBookModel extends ChangeNotifier {
  List<Map<String, String>> _favoriteBooks = [];

 List<Map<String, String>> get favoriteBooks => _favoriteBooks;

  void toggleFavorite(Map<String, String> book) {
    final existingIndex = _favoriteBooks.indexWhere((b) => b['book'] == book['book']);
    if (existingIndex >= 0) {
      _favoriteBooks.removeAt(existingIndex);
    } else {
      _favoriteBooks.add(book);
    }
    notifyListeners();
  }
  bool isFavorite(String bookTitle) {
    return _favoriteBooks.any((book) => book['book'] == bookTitle);
  }
}