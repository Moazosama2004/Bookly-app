import 'package:flutter/material.dart';
class SearchItemsListView extends StatelessWidget {
  const SearchItemsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            // child: BestSellerItem(),
            child: Container(),
          );
        });
  }
}
