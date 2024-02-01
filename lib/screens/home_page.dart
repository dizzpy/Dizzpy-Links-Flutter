import 'package:dizzpy/components/card_tile.dart';
import 'package:dizzpy/components/name.dart';
import 'package:dizzpy/components/positions.dart';
import 'package:dizzpy/components/profile_picture.dart';
import 'package:dizzpy/constant/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kColorBackground,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                profilePhoto(),
                SizedBox(height: 18),
                name(),
                SizedBox(height: 9),
                positions(),
                SizedBox(height: 26),
                cardTile(
                  name: 'Instagram',
                  imagePath: "assets/insta.svg",
                  link: 'https://www.flutter.com/',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
