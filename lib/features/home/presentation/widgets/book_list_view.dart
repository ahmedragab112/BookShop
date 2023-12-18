import 'package:bookly/core/utils/layout/app_size.dart';
import 'package:bookly/features/home/presentation/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookListView extends StatelessWidget {
  const BookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeOfScreen.screenHeight(context) * .25,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const PlayButton(),
        itemCount: 20,
        separatorBuilder: (context, index) => const Gap(
          20,
        ),
      ),
    );
  }
}
