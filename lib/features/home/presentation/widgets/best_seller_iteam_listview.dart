import 'package:bookly/features/home/presentation/widgets/best_seller_iteam.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const BestSellerItem(),
      separatorBuilder: (context, index) => const Gap(20),
      itemCount: 100,
    );
  }
}
