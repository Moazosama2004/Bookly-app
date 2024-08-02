import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration:  InputDecoration(
          hintText: 'Search',
          suffixIcon:  const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 20,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(color: Colors.white))),
    );
  }
}
