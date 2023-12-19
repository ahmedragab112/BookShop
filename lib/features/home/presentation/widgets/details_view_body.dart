import 'package:bookly/features/home/presentation/widgets/book_details_scrion.dart';
import 'package:bookly/features/home/presentation/widgets/custom_book_price.dart';
import 'package:bookly/features/home/presentation/widgets/details_custom_appbar.dart';
import 'package:bookly/features/home/presentation/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

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
                SizedBox(height: 30),
                BookDetailsSection(),
                SizedBox(height: 35),
                BookPrice(),
                SizedBox(height: 50),
                SimilerBookSection()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
