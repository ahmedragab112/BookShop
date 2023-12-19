import 'package:bookly/core/utils/constant/constant.dart';
import 'package:bookly/core/utils/layout/app_size.dart';
import 'package:bookly/features/home/presentation/widgets/book_description.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset(
            'assets/images/Book 1 Hightligh.png',
            width: SizeOfScreen.getWidth(162, context),
            height: SizeOfScreen.getHeight(250, context),
            fit: BoxFit.fill,
          ),
        ),
        const Gap(20),
        Text(
          'The Jungle Book',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontFamily: kFontGt, fontSize: 30),
          textAlign: TextAlign.center,
        ),
        const Gap(5),
        Text(
          'Rudyard Kipling',
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.white.withOpacity(.7)),
          textAlign: TextAlign.center,
        ),
        const Gap(14),
        const BookDescription(),
      ],
    );
  }
}
