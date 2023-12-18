import 'package:bookly/core/utils/constant/constant.dart';
import 'package:bookly/core/utils/layout/app_size.dart';
import 'package:bookly/features/home/presentation/widgets/price_and_rating.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            'assets/images/book.png',
            width: SizeOfScreen.getWidth(70, context),
            height: SizeOfScreen.getHeight(105, context),
            fit: BoxFit.fill,
          ),
        ),
        const Gap(30),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Harry Potter and the Goblet of Fire  ",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontFamily: kFontGt, fontSize: 20),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const Gap(5),
              Text(
                'J.K. Rowling',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey),
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              const Gap(5),
              const PriceAndRating()
            ],
          ),
        )
      ],
    );
  }
}
