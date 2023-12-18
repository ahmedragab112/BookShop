import 'package:bookly/features/home/presentation/widgets/book_item.dart';
import 'package:flutter/material.dart';

class BookListView extends StatelessWidget {
  const BookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const PlayButton(),
        itemCount: 20,
      ),
    );
  }
}
