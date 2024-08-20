import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indecator.dart';
import 'package:bookly_app/features/home/presentation/manager/news_books_cubit/news_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/news_books_cubit/news_books_states.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bestseller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBooksCubit, NewsBooksStates>(
      builder: (context, state) {
        if (state is NewsBooksSuccessState) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: BestSellerItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewsBooksFailureState) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
