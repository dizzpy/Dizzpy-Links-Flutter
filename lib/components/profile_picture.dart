import 'package:flutter/material.dart';

class profilePhoto extends StatelessWidget {
  const profilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 100,
        height: 100,
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage("images/profile.png"),
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}
