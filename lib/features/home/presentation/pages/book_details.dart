import 'package:bookly/core/model/book_index.dart';
import 'package:bookly/features/home/presentation/widgets/details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    BookIndex bookModel = ModalRoute.of(context)!.settings.arguments as BookIndex;
    return SafeArea(
      child: Scaffold(
        body: DetailsViewBody(bookIndex: bookModel,),
      ),
    );
  }
}
