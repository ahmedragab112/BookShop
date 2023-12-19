import 'package:bookly/features/home/presentation/widgets/book_details_scrion.dart';
import 'package:bookly/features/home/presentation/widgets/custom_book_price.dart';
import 'package:bookly/features/home/presentation/widgets/details_custom_appbar.dart';
import 'package:bookly/features/home/presentation/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Column(
              children: [
                DetialsCustomAppBar(),
                Gap(30),
                BookDetailsSection(),
                Gap(35),
                BookPrice(),
                Gap(50),
                SimilerBookSection()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
