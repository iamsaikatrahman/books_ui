import 'package:books_ui/data/data.dart';
import 'package:books_ui/widgets/Book_Grid_widget.dart';
import 'package:books_ui/widgets/customWidgets.dart';
import 'package:flutter/material.dart';

class AllBooks extends StatelessWidget {
  const AllBooks({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            headers("All Books"),
            SizedBox(height: 20),
            searchBox(),
            SizedBox(height: 20),
            headers("Popular Books"),
            SizedBox(height: 10),
            BookListViewCard(
              itemCount: allcategories.length,
              bookslist: allcategories,
            ),
            SizedBox(height: 20),
            headers("Kid\'s Books"),
            SizedBox(height: 10),
            BookListViewCard(
              itemCount: kidsBooks.length,
              bookslist: kidsBooks,
            ),
            SizedBox(height: 20),
            headers("Horror Books"),
            SizedBox(height: 10),
            BookListViewCard(
              itemCount: horrorBooks.length,
              bookslist: horrorBooks,
            ),
            SizedBox(height: 20),
            headers("Fiction Books"),
            SizedBox(height: 10),
            BookListViewCard(
              itemCount: fictionBooks.length,
              bookslist: fictionBooks,
            ),
          ],
        ),
      ),
    );
  }
}
