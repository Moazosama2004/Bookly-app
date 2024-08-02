import 'package:bookly_app/features/search/presentation/views/widgets/search_items_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomSearchTextField(),
          Padding(
            padding: EdgeInsets.only(
              top: 20.0,
              bottom: 10.0
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Search Results ',
                style: Styles.textStyle18,
              ),
            ),
          ),
          Expanded(child: SearchItemsListView()),
        ],
      )
    );
  }
}
