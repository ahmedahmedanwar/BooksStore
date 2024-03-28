import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: builedOutlinedInputBorder(),
        //focusedBorder to make it un changable when click on the text filed
        focusedBorder: builedOutlinedInputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 25,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder builedOutlinedInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
