import 'package:books_ui/views/all_books.dart';
import 'package:books_ui/views/fiction_books.dart';
import 'package:books_ui/views/horror_books.dart';
import 'package:books_ui/views/kids.dart';
import 'package:flutter/material.dart';

class MianScreen extends StatefulWidget {
  @override
  _MianScreenState createState() => _MianScreenState();
}

class _MianScreenState extends State<MianScreen> {
  int selectedIndex = 0;
  final padding = 8.0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        // appBar: AppBar(
        //   backgroundColor: Color(0xFF4EB1A2),
        //   title: Text(
        //     "E-Books",
        //     style: TextStyle(
        //       fontSize: 18,
        //       fontFamily: "Newsreader-Regular",
        //       color: Colors.white,
        //       letterSpacing: 1.5,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        //   centerTitle: true,
        // ),
        body: Row(
          children: [
            NavigationRail(
              minWidth: 56.0,
              groupAlignment: 1.0,
              backgroundColor: Color(0xFF2FB1A2),
              selectedIndex: selectedIndex,
              labelType: NavigationRailLabelType.all,
              onDestinationSelected: (index) {
                setState(() {
                  selectedIndex = index;
                  pageController.animateToPage(
                    index,
                    duration: Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                  );
                });
              },
              selectedLabelTextStyle: TextStyle(
                fontFamily: "Newsreader-Regular",
                color: Colors.white,
                fontSize: 13,
                letterSpacing: 0.8,
                decorationThickness: 2.0,
              ),
              unselectedLabelTextStyle: TextStyle(
                fontSize: 13,
                letterSpacing: 0.8,
              ),
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/75200754?s=460&u=9157b54be58ebe2d4e91c3d9be6f1f3aaaeea35f&v=4",
                ),
              ),
              destinations: [
                buildRotatedTextRailDestination(
                    "All \nBooks".toUpperCase(), padding),
                buildRotatedTextRailDestination("kid's".toUpperCase(), padding),
                buildRotatedTextRailDestination(
                    "fiction".toUpperCase(), padding),
                buildRotatedTextRailDestination(
                    "horror".toUpperCase(), padding),
              ],
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  AllBooks(),
                  Kids(),
                  FictionBooks(),
                  HorrorBooks(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

NavigationRailDestination buildRotatedTextRailDestination(
    String text, double padding) {
  return NavigationRailDestination(
    icon: SizedBox.shrink(),
    label: Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: RotatedBox(
        quarterTurns: -1,
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
