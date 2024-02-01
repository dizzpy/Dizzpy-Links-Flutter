import 'package:flutter/material.dart';

class positions extends StatelessWidget {
  const positions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Undergraduate | Freelancer | Developer',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        height: 0,
      ),
    );
  }
}
