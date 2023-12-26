import 'package:bookly/core/utils/colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class PriceAndRating extends StatelessWidget {
  const PriceAndRating({
    super.key,
    required this.price,
    required this.stareRating,
    required this.ratingCount,
  });
  final String price;
  final num stareRating;
  final num ratingCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          price == 'NOT_FOR_SALE' ? 'Not for Sale' : '$price €',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
          overflow: TextOverflow.clip,
          maxLines: 1,
        ),
        const Spacer(),
        const Icon(
          FontAwesomeIcons.solidStar,
          color: goldColor,
          size: 15,
        ),
        const Gap(6),
        Text(
          stareRating.toString(),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 16,
              ),
        ),
        const Gap(4),
        Text(
          '($ratingCount)',
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(fontSize: 14, color: Colors.grey),
        )
      ],
    );
  }
}
