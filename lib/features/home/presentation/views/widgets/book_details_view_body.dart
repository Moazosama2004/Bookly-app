import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';
import 'book_action_button.dart';
import 'custom_app_bar_book_details_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const CustomAppBarBookDetailsView(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.18),
                child: const BookItem(),
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                'The Jungle Book',
                style: Styles.textStyle30,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Colors.white.withOpacity(0.7)),
              ),
              const SizedBox(
                height: 18.0,
              ),
              const Rating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 37.0,
              ),
              const BookActionButton(),
            ],
          ),
        ),
      ),
    );
  }
}
