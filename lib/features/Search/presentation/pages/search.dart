import 'package:bookly/features/Search/manager/search_cubit.dart';
import 'package:bookly/features/Search/presentation/widgets/custom_search_filed.dart';
import 'package:bookly/features/Search/presentation/widgets/empty_search.dart';
import 'package:bookly/features/Search/presentation/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        var bloc = BlocProvider.of<SearchCubit>(context);
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_sharp),
            ),
            title: CustomSearchFiled(
              onChanged: (value) {},
            ),
            centerTitle: true,
          ),
          body: bloc.books == null
              ? const NoSearchIteam()
              : const SearchViewBody(),
        );
      },
    );
  }
}
