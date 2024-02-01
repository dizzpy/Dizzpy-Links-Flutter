import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class cardTile extends StatelessWidget {
  const cardTile({
    required this.name,
    required this.imagePath,
    required this.link,
  });

  final String name;
  final String imagePath;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () async {
          if (await canLaunch(link)) {
            await launch(link);
          }
        },
        child: Column(
          children: [
            Center(
              child: Container(
                width: 292,
                height: 56,
                decoration: ShapeDecoration(
                  color: Color(0xFF212121),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF292929),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(13),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        imagePath,
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(width: 70),
                      Text(
                        name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Poppins SemiBold',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
