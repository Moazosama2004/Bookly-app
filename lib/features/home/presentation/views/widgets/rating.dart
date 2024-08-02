import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 15,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(2375)',
          style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.white.withOpacity(0.5)),
        ),
      ],
    );
  }
}
