import 'package:classage/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tablet extends StatefulWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  _TabletState createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                logo(),
                SizedBox(width: 20),
                topNav(context)
              ],
            ),
            SizedBox(height: 8),
            introContainer(context),
            SizedBox(height: 20),
            introImage(),
            SizedBox(height: 35,),
            Container2(context),
            SizedBox(height: 20),
            image2(),
            SizedBox(height: 35),
            Container3(context),
            SizedBox(height: 20),
            platformsImage(context),
            SizedBox(height: 35),
            footer(context),

          ],
        ),
      ),
    );
  }
}
