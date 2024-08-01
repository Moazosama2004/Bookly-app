import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          r'19.99 $',
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        ),
        Row(
          children:   [
            const Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.amber,
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
              style: Styles.textStyle14
                  .copyWith(color: Colors.white.withOpacity(0.5)),
            ),
          ],
        ),
      ],
    );
  }
}
