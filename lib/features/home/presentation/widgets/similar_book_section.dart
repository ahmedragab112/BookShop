import 'package:bookly/core/utils/strings/app_string.dart';
import 'package:bookly/features/home/presentation/widgets/similar_book_listview.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SimilerBookSection extends StatelessWidget {
  const SimilerBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            alsoLiked,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const Gap(16),
          const SimilarBookListView()
        ],
      ),
    );
  }
}
