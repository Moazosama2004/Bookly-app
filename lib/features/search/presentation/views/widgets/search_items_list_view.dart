import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/bestseller_list_view_item.dart';

class SearchItemsListView extends StatelessWidget {
  const SearchItemsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context , index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: BestSellerItem(),
          );
        });
  }
}
