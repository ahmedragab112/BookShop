import 'package:bookly/core/utils/strings/app_string.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

class NoSearchIteam extends StatelessWidget {
  const NoSearchIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Gap(80),
            Lottie.network(fit: BoxFit.fill, noSearchResult),
            const Gap(20),
            Text(
              searchYourBook,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
