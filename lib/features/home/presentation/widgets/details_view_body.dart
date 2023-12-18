import 'package:bookly/core/utils/constant/constant.dart';
import 'package:bookly/core/utils/layout/app_size.dart';
import 'package:bookly/features/home/presentation/widgets/book_description.dart';
import 'package:bookly/features/home/presentation/widgets/custom_book_price.dart';
import 'package:bookly/features/home/presentation/widgets/details_custom_appbar.dart';
import 'package:bookly/features/home/presentation/widgets/similar_book_listview.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const DetialsCustomAppBar(),
          const Gap(30),
          Center(
            child: Image.asset(
              'assets/images/Book 1 Hightligh.png',
              width: SizeOfScreen.getWidth(162, context),
              height: SizeOfScreen.getHeight(250, context),
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
                .copyWith(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const Gap(14),
          const BookDescription(),
          const Gap(35),
          const BookPrice(),
          const Gap(50),
          Text(
            'You can also like',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const Gap(15),
          const SimilarBookListView()
        ],
      ),
    );
  }
}
