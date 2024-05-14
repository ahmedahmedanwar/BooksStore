// import 'package:anim_search_bar/anim_search_bar.dart';
// import 'package:book_store/core/utils/app_router.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:go_router/go_router.dart';

// import '../../../../../core/utils/assets.dart';

// class CustumAppBar extends StatelessWidget {
//   const CustumAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController textController = TextEditingController();
//     return Padding(
//       padding:     const EdgeInsets.all(20),
//       child: Row(
//         children: [
//           // Padding(
//           //   padding: const EdgeInsets.only(right: 5),
//           //   child: IconButton(onPressed: (){

//           //     GoRouter.of(context).push(AppRouter.KMainDrawer);
//           //   },icon: const Icon(FontAwesomeIcons.bars,),),
//           // ),
//           IconButton(
//             onPressed: () {
//               GoRouter.of(context).push(AppRouter.KMainDrawer);
//             },
//             icon: const Icon(
//               FontAwesomeIcons.bars,
//               color: Color.fromARGB(255, 24, 125, 132),
//             ),
//           ),
//           Image.asset(
//             AssetsData.logo,
//             // height: 100,
//             width: 100,
//             fit: BoxFit.fitWidth,
//           ),
//           const Spacer(),
//           AnimSearchBar(

//             width: MediaQuery.of(context).size.width - 150,
//             textController: textController,
//             onSuffixTap: () {
//               textController.clear();
//             },
//             onSubmitted: (String bookName) {
//               GoRouter.of(context).push(AppRouter.KSearchView, extra: bookName);
//             },
//           ),
//           // IconButton(
//           //   onPressed: () {
//           //     GoRouter.of(context).push(AppRouter.KSearchView, extra: bookName);
//           //   },
//           //   icon: const Icon(
//           //     FontAwesomeIcons.magnifyingGlass,
//           //     color: Color.fromARGB(255, 24, 125, 132),
//           //     size: 25,
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// // import '../../../../../core/utils/assets.dart';

// // class CustomAppBar extends StatelessWidget {
// //   const CustomAppBar({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return SliverAppBar(
// //       toolbarHeight: 100,
// //       flexibleSpace: FlexibleSpaceBar(
// //         background: Container(color: Colors.black,),
// //       ) ,
// //       // Set these properties to customize the SliverAppBar behavior
// //       expandedHeight: 100.0, // Height of the expanded app bar
// //       // collapsedHeight: 60.0, // Height of the collapsed app bar

// //       leading: SizedBox(
// //         height: 50.0,
// //         child: Image.asset(
// //           AssetsData.logo,

// //           fit: BoxFit.fitWidth
// //         ),
// //       ), // Leading widget - your logo
// //    // Optional title text
// //       centerTitle: true, // Center the title text
// //       actions: [
// //         IconButton(
// //           icon: const Icon(
// //             FontAwesomeIcons.magnifyingGlass,
// //             size: 25,
// //           ),
// //           onPressed: () {},
// //         ),
// //       ], // Trailing widget - your search icon
// //     );
// //   }
// // }

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
      
            child: Image(
              image: AssetImage(AssetsData.logo),
              height: 20,
            ),
          ),
          AnimSearchBar(
            
            color: const Color.fromARGB(255, 24, 125, 132),
            // boxShadow: false,
            // closeSearchOnSuffixTap: true,
            textFieldColor: const Color.fromARGB(255, 24, 125, 132),
            width: MediaQuery.of(context).size.width - 150,
            textController: textController,
            textFieldIconColor: Colors.white,
            onSuffixTap: () {
              setState(() {
                textController.clear();
                
              });
            },
            onSubmitted: (String bookName) {
              GoRouter.of(context).push(AppRouter.KSearchView, extra: bookName);
            },
          ),
        ],
      ),
    );
  }
}
