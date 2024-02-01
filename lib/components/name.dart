import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class name extends StatelessWidget {
  const name({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //name
        Text(
          'Anuja Nisal Yashohara',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.asset(
          "assets/tick.svg",
          width: 20,
          height: 20,
        ),
      ],
    );
  }
}
