import 'package:books_ui/data/data.dart';
import 'package:books_ui/widgets/Book_Grid_widget.dart';
import 'package:books_ui/widgets/customWidgets.dart';
import 'package:flutter/material.dart';

class FictionBooks extends StatefulWidget {
  @override
  _FictionBooksState createState() => _FictionBooksState();
}

class _FictionBooksState extends State<FictionBooks> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            fictionCarousel(),
            SizedBox(height: 20),
            headers("Fiction Books"),
            SizedBox(height: 20),
            FictionBooksStaggeredGridViewCard(
              itemCount: fictionBooks.length,
              bookList: fictionBooks,
            ),
          ],
        ),
      ),
    );
  }
}
