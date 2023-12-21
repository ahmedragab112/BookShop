import 'package:bookly/core/utils/helper/shimmer.dart';
import 'package:bookly/core/utils/layout/app_size.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBook extends StatelessWidget {
  const CustomBook({super.key, required this.bookImage});
  final String bookImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeOfScreen.screenWidth(context) * .35,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 1 / 3,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: bookImage,
            placeholder: (context, url) => ShimmerEffect(
              width: SizeOfScreen.screenWidth(context) * .35,
              child: Container(
                color: Colors.grey.withOpacity(.1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
