import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileDetails extends StatelessWidget {
  final String number;
  final String title;
  MyProfileDetails(this.number, this.title);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 13.0,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          title,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 11.0,
          ),
        ),
      ],
    );
  }
}
