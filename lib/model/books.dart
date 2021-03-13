import 'package:flutter/cupertino.dart';

class Books {
  final String imgUrl;
  final String name;
  final String rating;
  final int pages;
  final int reviews;
  final String language;
  final String shortdes;
  final String author;

  Books({
    @required this.imgUrl,
    @required this.name,
    @required this.rating,
    @required this.pages,
    @required this.reviews,
    @required this.language,
    @required this.shortdes,
    @required this.author,
  });
}
