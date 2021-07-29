import 'package:classage/responsive/myLayout.dart';
import 'package:classage/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Download extends StatefulWidget {
  const Download({Key? key}) : super(key: key);

  @override
  _DownloadState createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  @override
  Widget build(BuildContext context) {
    return MyLayout(
        desktopView: DownloadDesktop(),
        tabletView: DownloadTablet());
  }
}



class DownloadDesktop extends StatefulWidget {
  const DownloadDesktop({Key? key}) : super(key: key);

  @override
  _DownloadDesktopState createState() => _DownloadDesktopState();
}

class _DownloadDesktopState extends State<DownloadDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [logo(), SizedBox(width: 200), topNav(context)],
            ),
            SizedBox(height: 80),
            Center(child: Text("Available for all platforms", style: Theme.of(context).textTheme.headline1,)),
            Center(child: Text("Desktop version is currently in beta state now, stable version of classage will be available soon", style: Theme.of(context).textTheme.headline6,)),
            SizedBox(height: 80),
            platformsImage(context),
            SizedBox(height: 80),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: " By continuing, you are agree to Classage  ",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text: 'Terms of Service',
                      style: Theme.of(context).textTheme.bodyText2,
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () {
                          launch(
                              'https://docs.flutter.io/');
                        },
                    ),
                    TextSpan(
                      text: "  and  ",
                      style: Theme.of(context).textTheme.bodyText1
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: Theme.of(context).textTheme.bodyText2,
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () {
                          launch(
                              'https://docs.flutter.io/');
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DownloadTablet extends StatefulWidget {
  const DownloadTablet({Key? key}) : super(key: key);

  @override
  _DownloadTabletState createState() => _DownloadTabletState();
}

class _DownloadTabletState extends State<DownloadTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [logo(), SizedBox(width: 20), topNav(context)],
            ),
            SizedBox(height: 80),
            Text("Available for all platforms", style: Theme.of(context).textTheme.headline1,),
            Text("Desktop version is currently in beta state now, stable version of classage will be available soon", style: Theme.of(context).textTheme.headline6,),
            SizedBox(height: 80),
            platformsImage(context),
            SizedBox(height: 80),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: " By continuing, you are agree to Classage  ",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  TextSpan(
                    text: 'Terms of Service',
                    style: Theme.of(context).textTheme.bodyText2,
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () {
                        launch(
                            'https://docs.flutter.io/');
                      },
                  ),
                  TextSpan(
                      text: "  and  ",
                      style: Theme.of(context).textTheme.bodyText1
                  ),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: Theme.of(context).textTheme.bodyText2,
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () {
                        launch(
                            'https://docs.flutter.io/');
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

