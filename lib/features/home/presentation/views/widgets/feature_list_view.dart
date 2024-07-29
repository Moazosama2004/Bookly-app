import 'package:flutter/material.dart';

import 'feature_list_view_item.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: FeatureItem(),
            );
          }),
    );
  }
}
