import 'package:books_ui/data/data.dart';
import 'package:books_ui/widgets/Book_Grid_widget.dart';
import 'package:books_ui/widgets/customWidgets.dart';
import 'package:flutter/material.dart';

class HorrorBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        horrorBackground(context),
        SingleChildScrollView(
          child: Container(
            color: Colors.white.withOpacity(0.8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                headers("Horror Books"),
                SizedBox(height: 20),
                horrorThumble(),
                HorrorBookGridViewCard(
                  itemCount: horrorBooks.length,
                  bookList: horrorBooks,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

 

 


}
