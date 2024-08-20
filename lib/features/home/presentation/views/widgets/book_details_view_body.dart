import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar_book_details_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      const CustomAppBarBookDetailsView(),
                      const BookDetails(),
                      const Expanded(
                        child: SizedBox(
                          height: 50.0,
                        ),
                      ),
                      SimilarBookSection(
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
