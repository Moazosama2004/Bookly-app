import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarBookDetailsView extends StatelessWidget {
  const CustomAppBarBookDetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {
          GoRouter.of(context).pop();
        }, icon: const Icon(Icons.clear)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.local_grocery_store_outlined)),
      ],
    );
  }
}