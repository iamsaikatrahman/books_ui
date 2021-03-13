import 'package:books_ui/data/data.dart';
import 'package:books_ui/widgets/Book_Grid_widget.dart';
import 'package:books_ui/widgets/customWidgets.dart';
import 'package:flutter/material.dart';

class Kids extends StatelessWidget {
  const Kids({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation;
    return Stack(
      children: [
        kidsBackground(context),
        SingleChildScrollView(
          child: Container(
            color: Colors.white.withOpacity(0.6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                headers("Kid\'s Books"),
                SizedBox(height: 20),
                BooksGridViewCard(
                  orientation: orientation,
                  itemCount: kidsBooks.length,
                  booksList: kidsBooks,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
