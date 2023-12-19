import 'package:bookly/features/Search/presentation/widgets/custom_search_filed.dart';
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
          vertical: 48,
        ),
        child: Column(
          children: [CustomSearchFiled()],
        ),
      ),
    );
  }
}
