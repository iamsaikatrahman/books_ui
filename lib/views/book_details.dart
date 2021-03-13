import 'package:books_ui/model/books.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatefulWidget {
  final Books books;

  const BookDetails({Key key, this.books}) : super(key: key);
  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFF2FB1A2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton.icon(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            label: Text(
                              "Back",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontFamily: "Newsreader-Regular",
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            child: CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.3),
                              child: Icon(
                                Icons.favorite,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        widget.books.name,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: "Newsreader-Regular",
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        widget.books.author,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.tealAccent,
                          fontFamily: "Newsreader-Regular",
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(width: 5),
                          Text(
                            widget.books.rating,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.35,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(widget.books.imgUrl),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: MediaQuery.of(context).size.width * 0.38,
                            child: Container(
                              height: 60,
                              width: 60,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blueGrey,
                                    offset: Offset(2, 3),
                                    blurRadius: 6,
                                    spreadRadius: -3,
                                  ),
                                ],
                              ),
                              child: Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2FB1A2),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Image.network(
                                  "https://www.pinclipart.com/picdir/big/408-4088114_reading-relations-open-book-icon-clipart.png",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Language",
                                  style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  widget.books.language,
                                  style: TextStyle(
                                    color: Color(0xFF2FB1A2),
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Pages",
                                  style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '${widget.books.pages}',
                                  style: TextStyle(
                                    color: Color(0xFF2FB1A2),
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Reviews",
                                  style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "${widget.books.reviews}",
                                  style: TextStyle(
                                    color: Color(0xFF2FB1A2),
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        "About",
                        style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 1,
                          fontFamily: "Newsreader-Regular",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        widget.books.shortdes,
                        style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 1.5,
                          wordSpacing: 1.5,
                          fontFamily: "Newsreader-Regular",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
