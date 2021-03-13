import 'package:books_ui/data/data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Padding headers(String title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontFamily: "Newsreader-Regular",
        letterSpacing: 1.5,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Container searchBox() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.blueGrey.withOpacity(0.5),
          offset: Offset(1, 3),
          blurRadius: 6,
          spreadRadius: -3,
        ),
      ],
    ),
    child: Row(
      children: [
        Expanded(
          flex: 4,
          child: TextField(
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Newsreader-Regular",
              letterSpacing: 0.5,
              fontWeight: FontWeight.w600,
            ),
            decoration: InputDecoration(
              hintText: 'search books....',
              hintStyle: TextStyle(
                fontSize: 18,
                fontFamily: "Newsreader-Regular",
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              border: InputBorder.none,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () => print("searhc icon tapped!"),
            child: CircleAvatar(
              backgroundColor: Color(0xFF2FB1A2),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Container kidsBackground(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          "https://i.pinimg.com/736x/f0/b1/d0/f0b1d052d02365b9735e1121400cd7b6.jpg",
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Container horrorBackground(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          "https://st2.depositphotos.com/2444239/10793/i/950/depositphotos_107930620-stock-photo-the-tops-of-trees-background.jpg",
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}

CarouselSlider fictionCarousel() {
  return CarouselSlider(
    options: CarouselOptions(
      autoPlay: true,
      height: 160,
      enlargeCenterPage: true,
    ),
    items: carouselImage
        .map((item) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                    item,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ))
        .toList(),
  );
}

Padding horrorThumble() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://c8.alamy.com/comp/FKR91H/james-herbert-horror-books-stacked-on-desk-england-FKR91H.jpg",
              ),
            ),
          ),
        ),
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Where there is no imagination there is no horror."
                      .toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 2,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Newsreader-Regular",
                  ),
                ),
                SizedBox(
                  height: 45,
                  width: 150,
                  child: RaisedButton.icon(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: Color(0xFF2FB1A2),
                    onPressed: () {},
                    icon: Container(
                      height: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0.3),
                        child: Icon(
                          Icons.menu_book_outlined,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    label: Text(
                      "Start\nReading".toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
