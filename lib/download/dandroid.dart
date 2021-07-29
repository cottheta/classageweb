import 'package:classage/widgets/theme.dart';
import 'package:classage/responsive/myLayout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dandroid extends StatefulWidget {
  const Dandroid({Key? key}) : super(key: key);

  @override
  _DandroidState createState() => _DandroidState();
}

class _DandroidState extends State<Dandroid> {
  @override
  Widget build(BuildContext context) {
    return MyLayout(
      tabletView: androidTablet(context),
      desktopView: androidDesktop(context),
    );
  }
}

Widget androidDesktop(BuildContext context){
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [logo(), SizedBox(width: 200), topNav(context)],
          ),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              dandroidContainer(context),
              SizedBox(width: 20),
              dandroidImage()
            ],
          )
        ],
      ),
    ),
  );
}

Widget androidTablet(BuildContext context){
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [logo(), SizedBox(width: 20), topNav(context)],
          ),
          SizedBox(height: 50),
          dandroidImage(),
          SizedBox(width: 80),
          dandroidContainer(context),

        ],
      ),
    ),
  );
}

Widget dandroidContainer(BuildContext context) {
  return Container(
    width: 600,
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text("Download for Android",
            style: Theme.of(context)
                .textTheme
                .headline2 //GoogleFonts.quicksand(fontSize: 36, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 20),
        Text("enjoy desktop version of classage, if your download doesn't start click here to download again.",
            style: Theme.of(context)
                .textTheme
                .bodyText1 //GoogleFonts.quicksand(fontSize: 20, color: Colors.black87),
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.bottomLeft,
          child: SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_downward),
                  SizedBox(width: 10),
                  Text(
                    "Download",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget dandroidImage() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(30.0),
    child: Image(
      image: AssetImage('assets/android.jpg'),
      height: 200,
    ),
  );
}
