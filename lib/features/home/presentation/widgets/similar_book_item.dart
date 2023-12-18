import 'package:flutter/material.dart';

class SimilarBookItem extends StatelessWidget {
  const SimilarBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: AspectRatio(
        aspectRatio: 1 / 3,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/book.png',
                  ),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
