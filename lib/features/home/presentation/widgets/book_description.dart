import 'package:bookly/core/utils/colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class BookDescription extends StatelessWidget {
  const BookDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        const Icon(
          FontAwesomeIcons.solidStar,
          color: goldColor,
          size: 12,
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
        ),
        const Spacer()
      ],
    );
  }
}
