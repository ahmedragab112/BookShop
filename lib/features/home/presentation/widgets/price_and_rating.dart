import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class PriceAndRating extends StatelessWidget {
  const PriceAndRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '19.99 €',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
          overflow: TextOverflow.clip,
          maxLines: 1,
        ),
        const Spacer(),
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
        const Gap(6),
        Text(
          '4.8',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 16,
              ),
        ),
        const Gap(4),
        Text(
          '(2390)',
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(fontSize: 14, color: Colors.grey),
        )
      ],
    );
  }
}
