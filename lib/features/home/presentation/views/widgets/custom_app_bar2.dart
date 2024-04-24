import 'package:book_store/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';

class CustomAppBarNew extends StatelessWidget {
  const CustomAppBarNew({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const MainDrawer(),
      body: Row(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.KMainDrawer);
            },
            icon: const Icon(
              FontAwesomeIcons.bars,
              color: Color.fromARGB(255, 24, 125, 132),
            ),
          ),
          Image.asset(
            AssetsData.logo,
            // height: 100,
            width: 100,
            fit: BoxFit.fitWidth,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.KSearchView);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Color.fromARGB(255, 24, 125, 132),
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}

// child: Row(
//   children: [

//   IconButton(onPressed: (){
//      GoRouter.of(context).push(AppRouter.KMainDrawer);
//   }, icon: const Icon(FontAwesomeIcons.bars,color:  Color.fromARGB(255, 24, 125, 132), ),),
//     Image.asset(
//       AssetsData.logo,
//       // height: 100,
//       width: 100,
//      fit: BoxFit.fitWidth,
//     ),
//     const Spacer(),
//     IconButton(
//       onPressed: () {
//         GoRouter.of(context).push(AppRouter.KSearchView);
//       },
//       icon: const Icon(
//         FontAwesomeIcons.magnifyingGlass,
//         color: Color.fromARGB(255, 24, 125, 132),
//         size: 25,
//       ),
//     ),
//   ],
// ),
