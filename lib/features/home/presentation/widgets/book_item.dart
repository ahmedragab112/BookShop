import 'dart:ui';

import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            width: 150,
            height: 224,
            margin: const EdgeInsets.only(right: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              image: DecorationImage(
                  image: NetworkImage(
                    'https://th.bing.com/th/id/OIP.cmTcUqX-2WFqJofdiwQLBQHaHa?rs=1&pid=ImgDetMain',
                  ),
                  fit: BoxFit.fill),
            ),
          ),
          Positioned(
            right: 30,
            child: Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                child: const Icon(
                  Icons.play_arrow,
                  size: 8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
