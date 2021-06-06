import 'package:flutter/material.dart';
import 'package:gresikdevweb/widgets/v_text.dart';

class LandingView extends StatefulWidget {
  @override
  _LandingViewState createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            VText("Made with Flutter", color: Colors.white),
          ],
        ),
      ),
    );
  }
}
