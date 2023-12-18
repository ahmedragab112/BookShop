import 'package:bookly/features/home/presentation/widgets/best_seller_iteam_listview.dart';
import 'package:bookly/features/home/presentation/widgets/best_seller_text.dart';
import 'package:bookly/features/home/presentation/widgets/book_list_view.dart';
import 'package:bookly/features/home/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 48,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                Gap(30),
                BookListView(),
                Gap(30),
                BestSellerText(),
                Gap(20),
              ],
            ),
          ),
          SliverFillRemaining(
            child: BestSellerIteamListView(),
          )
        ],
      ),
    );
  }
}
