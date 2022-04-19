import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color darkBlueColor = const Color(0XFF0E1954);
Color whiteColor = const Color(0XFFF8F8F8);
Color pinkColor = const Color(0XFFF94593);
Color purpleColor = const Color(0XFF808EE0);
Color darkColor = const Color(0XFF1B1B33);
Color lightColor = const Color(0XFFFFFFFF);

TextStyle header = GoogleFonts.poppins(
  fontSize: 24,
  fontWeight: FontWeight.w600,
  color: darkBlueColor,
);

TextStyle subHeader = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: darkBlueColor,
);

TextStyle btnText = GoogleFonts.openSans(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: whiteColor,
);

TextStyle title = GoogleFonts.poppins(
  fontSize: 24,
  fontWeight: FontWeight.w600,
  color: lightColor,
);

TextStyle subTitle = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.w300,
  color: lightColor,
);
