import 'package:bookly/features/home/presentation/widgets/best_seller_iteam.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverList.separated(
    
      itemBuilder: (context, index) => const BestSellerItem(),
      separatorBuilder: (context, index) => const Gap(20),
      itemCount: 100,
    );
  }
}