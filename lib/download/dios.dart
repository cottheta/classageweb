import 'package:classage/widgets/theme.dart';
import 'package:classage/responsive/myLayout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dios extends StatefulWidget {
  const Dios({Key? key}) : super(key: key);

  @override
  _DiosState createState() => _DiosState();
}

class _DiosState extends State<Dios> {
  @override
  Widget build(BuildContext context) {
    return MyLayout(
      tabletView: iosTablet(context),
      desktopView: iosDesktop(context),
    );
  }
}

Widget iosDesktop(BuildContext context){
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
              diosContainer(context),
              SizedBox(width: 20),
              diosImage()
            ],
          )
        ],
      ),
    ),
  );
}

Widget iosTablet(BuildContext context){
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
          diosImage(),
          SizedBox(width: 80),
          diosContainer(context),

        ],
      ),
    ),
  );
}

Widget diosContainer(BuildContext context) {
  return Container(
    width: 600,
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text("Download for Ios",
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

Widget diosImage() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(30.0),
    child: Image(
      image: AssetImage('assets/ios.png'),
      height: 200,
    ),
  );
}
