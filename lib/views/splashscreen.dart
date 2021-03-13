import 'package:books_ui/views/mainscreen.dart';
import 'package:books_ui/widgets/line_clipper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4EB1A2),
      body: Column(
        children: [
          ClipPath(
            clipper: LineClipper(),
            child: Image(
              height: MediaQuery.of(context).size.height * 0.6,
              width: double.infinity,
              image: NetworkImage(
                "https://images.unsplash.com/photo-1609348445085-13fc7e652d3b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
              ),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 50),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 10,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Keep Book's",
                    style: TextStyle(
                      fontSize: 40,
                      letterSpacing: 1.5,
                      fontFamily: "Newsreader-Bold",
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Learning",
                    style: TextStyle(
                      fontSize: 40,
                      letterSpacing: 1.5,
                      fontFamily: "Newsreader-Bold",
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 30),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 10,
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Route route = MaterialPageRoute(builder: (_) => MianScreen());
                  Navigator.pushReplacement(context, route);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFF4EB1A2),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(1, 4),
                        blurRadius: 6,
                        spreadRadius: -2,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Let\'s Start',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Newsreader-Regular",
                          color: Colors.white,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
