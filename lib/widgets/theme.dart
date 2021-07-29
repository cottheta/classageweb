import 'package:classage/download/dmacos.dart';
import 'package:classage/download/dios.dart';
import 'package:classage/download/download.dart';
import 'package:classage/download/dubuntu.dart';
import 'package:classage/download/dandroid.dart';
import 'package:classage/download/dwindows.dart';
import 'package:classage/meeting/meeting.dart';
import 'package:classage/responsive/MainScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget logo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        width: 20,
      ),
      Image(
        image: AssetImage('assets/classage.PNG'),
        height: 55,
        width: 55,
      ),
      Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(
          "classage",
          style: GoogleFonts.quicksand(
              fontSize: 26,
              color: Colors.lightBlue,
              fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}

Widget topNav(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Home",
              style: Theme.of(context).textTheme.button,
            ),
          )),
      SizedBox(width: 5),
      TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Download()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Download",
              style: Theme.of(context).textTheme.button,
            ),
          )),
      SizedBox(width: 5),
      ElevatedButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Login",
              style: GoogleFonts.quicksand(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )),
      SizedBox(
        width: 20,
      ),
    ],
  );
}

Widget introContainer(BuildContext context) {
  return Container(
    width: 420,
    padding: EdgeInsets.all(16),
    child: Column(
      children: [
        Text("Classroom with online benefits",
            style: Theme.of(context)
                .textTheme
                .headline1 //GoogleFonts.quicksand(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.black87),
            ),
        SizedBox(height: 12),
        Text(
            "Get real classroom experience create pdf, share documents, & conference with teachers and classmates",
            style: Theme.of(context)
                .textTheme
                .headline6 //GoogleFonts.quicksand(fontWeight: FontWeight.w600, fontSize: 22, color: Colors.black54),
            ),
        SizedBox(height: 30),
        Align(
          alignment: Alignment.bottomLeft,
          child: SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Meeting()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.videocam),
                  SizedBox(width: 5),
                  Text(
                    "Join Meeting",
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

Widget introImage() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(40.0),
    child: Image(
      image: AssetImage('assets/onlinelearning.png'),
      height: 300,
    ),
  );
}

Widget Container2(BuildContext context) {
  return Container(
    width: 400,
    padding: EdgeInsets.all(16),
    child: Column(
      children: <Widget>[
        Text("Video Conferencing",
            style: Theme.of(context).textTheme.headline2),
        Text(
          "Students can interact with teachers and classmates by videoconferencing or messaging download the app to get more features",
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    ),
  );
}

Widget image2() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(40.0),
    child: Image(
      image: AssetImage('assets/girlstudy.jpg'),
      width: 370,
    ),
  );
}

Widget Container4(BuildContext context) {
  return Container(
    width: 400,
    padding: EdgeInsets.all(16),
    child: Column(
      children: <Widget>[
        Text("Video Conferencing",
            style: Theme.of(context).textTheme.headline2),
        Text(
          "Students can interact with teachers and classmates by videoconferencing or messaging download the app to get more features",
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    ),
  );
}

Widget image4() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(40.0),
    child: Image(
      image: AssetImage('assets/teacher1.jpg'),
      width: 380,
    ),
  );
}

Widget Container3(BuildContext context) {
  return Container(
    width: 400,
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "Multi Platform",
          style: Theme.of(context).textTheme.headline2,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Available for all platforms ios, android, macos, ubuntu, windows and web app.",
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    ),
  );
}

Widget platformsImage(BuildContext context) {
  return Container(
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dios()),
              );
            },
            child: Image(
              width: 82,
              image: AssetImage('assets/ios.png'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dandroid()),
              );
            },
            child: Image(
              image: AssetImage('assets/android.jpg'),
              width: 80,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dmacos()),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: AssetImage('assets/macos.png'),
                width: 80,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dubuntu()),
              );
            },
            child: Image(
              image: AssetImage('assets/ubuntu.png'),
              width: 80,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dwindows()),
              );
            },
            child: Image(
              image: AssetImage('assets/windows.png'),
              width: 80,
            ),
          ),
          Image(
            image: AssetImage('assets/firefox.png'),
            width: 80,
          ),
        ],
      ),
    ),
  );
}

Widget footer(BuildContext context) {
  return Container(
    color: Colors.black,
    height: 270,
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.all(24.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            SizedBox(height: 20),
            Text("Contact",
                style: TextStyle(color: Colors.white, fontSize: 22)),
            SizedBox(height: 10),
            Text(
              "edumeetmgm@gmail.com",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Phone no. +919910379775",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 5),
            Text(
              "A-9, Sector 62,",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "MGM's CoET Noida,",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              "©Copyright 2021 , final year project",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(height: 20),
            Text(" Project Mentor",
                style: TextStyle(color: Colors.white, fontSize: 22)),
            SizedBox(height: 8),
            Text(
              "Mrs. Shalu Gupta Mam",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(" Project Developer",
                style: TextStyle(color: Colors.white, fontSize: 22)),
            SizedBox(height: 10),
            Text(
              "Abhishek Chauhan",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Raghav Shukla",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Dheeraj Verma",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Vivek Kumar Shukla",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    ),
  );
}
