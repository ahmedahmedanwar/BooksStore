// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class CustomSearchTextField extends StatelessWidget {
  
//     const CustomSearchTextField({super.key,});
    
//       @override
//       Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//       }
//   @
  
// }





// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class CustomSearchTextField extends StatelessWidget {
  
//   final Function(String) onSearch;
//    final TextEditingController _controller = TextEditingController();
//     CustomSearchTextField({super.key, required this.onSearch});
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       onSubmitted: onSearch, // Trigger search when the enter key is hit
//       decoration: InputDecoration(
//         enabledBorder: buildOutlineInputBorder(),
//         focusedBorder: buildOutlineInputBorder(),
//         hintText: 'Search here ',
//         suffixIcon: IconButton(
//           onPressed: () {
//             onSearch(_controller.text); // Trigger search when the search icon is pressed
//           },
//           icon: const Opacity(
//             opacity: .8,
//             child: Icon(
//               FontAwesomeIcons.magnifyingGlass,
//               size: 22,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   OutlineInputBorder buildOutlineInputBorder() {
//     return OutlineInputBorder(
//       borderSide: const BorderSide(
//         color: Colors.white,
//       ),
//       borderRadius: BorderRadius.circular(
//         12,
//       ),
//     );
//   }
// }
