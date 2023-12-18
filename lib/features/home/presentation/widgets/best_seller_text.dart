import 'package:bookly/core/utils/strings/app_string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSellerText extends StatelessWidget {
  const BestSellerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      bestSellerText,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          fontFamily: GoogleFonts.montserrat.toString(), fontSize: 20),
    );
  }
}
