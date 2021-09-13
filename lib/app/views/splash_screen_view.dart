import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () => Navigator.of(context).pushReplacementNamed('/home'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xff21262C)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Expanded(
                child: Align(
                  child: FaIcon(FontAwesomeIcons.whatsapp, size: 120, color: Colors.white),
                  alignment: Alignment.center,
                ),
              ),
              Text('from', style: TextStyle(fontSize: 20, color: Colors.white54)),
              Padding(padding: EdgeInsets.all(8)),
              Text('F A C E B O O K', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
