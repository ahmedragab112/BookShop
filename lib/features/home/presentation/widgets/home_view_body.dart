import 'package:bookly/features/home/presentation/widgets/book_list_view.dart';
import 'package:bookly/features/home/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
      child: Column(
        children: [CustomAppBar(), Gap(20), BookListView()],
      ),
    );
  }
}
