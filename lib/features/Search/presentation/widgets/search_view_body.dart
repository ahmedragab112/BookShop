import 'package:bookly/core/utils/strings/app_string.dart';
import 'package:bookly/features/Search/presentation/widgets/search_result_listview.dart';
import 'package:bookly/features/home/presentation/widgets/best_seller_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: Gap(16)),
            SliverToBoxAdapter(child: CustomHeadLineText(txt: searchResult)),
            SliverToBoxAdapter(child: Gap(16)),
            SearchResultListView()
          ],
        ),
      ),
    );
  }
}
