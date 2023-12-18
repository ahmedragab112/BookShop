import 'package:bookly/features/home/presentation/widgets/similar_book_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const SimilarBookItem(),
        separatorBuilder: (context, index) => const Gap(20),
        itemCount: 100,
      ),
    );
  }
}
