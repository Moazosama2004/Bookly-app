import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/custom_button.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.0),
      child:  Row(
        children:  [
          Expanded(
            child: CustomButton(
              text: r'19.99 $',
              textColor: Colors.black,
              bgColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0)

              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              textColor: Colors.white,
              bgColor: Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0)

              ),
            ),
          ),
        ],
      ),
    );
  }
}
