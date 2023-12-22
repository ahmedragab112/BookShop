import 'package:bookly/core/model/book_index.dart';
import 'package:bookly/features/home/presentation/widgets/book_details_scrion.dart';
import 'package:bookly/features/home/presentation/widgets/custom_book_price.dart';
import 'package:bookly/features/home/presentation/widgets/details_custom_appbar.dart';
import 'package:bookly/features/home/presentation/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({
    super.key,
    required this.bookIndex,
  });

  final BookIndex bookIndex;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 30.0, right: 30, bottom: 10, top: 40),
            child: Column(
              children: [
                const DetialsCustomAppBar(),
                const Gap(30),
                BookDetailsSection(
                  img: bookIndex.bookModel.items![bookIndex.index].volumeInfo!
                      .imageLinks!.thumbnail!,
                  title: bookIndex.bookModel.items![bookIndex.index].volumeInfo!
                          .title ??
                      '',
                  description: bookIndex.bookModel.items![bookIndex.index]
                          .volumeInfo!.description ??
                      '',
                  rating: bookIndex.bookModel.items?[bookIndex.index].volumeInfo
                          ?.ratingsCount ??
                      0,
                  averageRating: bookIndex.bookModel.items?[bookIndex.index]
                          .volumeInfo?.averageRating ??
                      0,
                ),
                const Gap(35),
                const BookPrice(),
                const Gap(50),
                const SimilerBookSection()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
