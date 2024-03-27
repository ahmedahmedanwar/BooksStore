import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';

class CustumAppBar extends StatelessWidget {
  const CustumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(right: 5),
          //   child: IconButton(onPressed: (){

          //     GoRouter.of(context).push(AppRouter.KMainDrawer);
          //   },icon: const Icon(FontAwesomeIcons.bars,),),
          // ),

          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.bars,
              )),
          Image.asset(
            AssetsData.logo,
            height: 25,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import '../../../../../core/utils/assets.dart';

// class CustomAppBar extends StatelessWidget {
//   const CustomAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SliverAppBar(
//       toolbarHeight: 100,
//       flexibleSpace: FlexibleSpaceBar(
//         background: Container(color: Colors.black,),
//       ) ,
//       // Set these properties to customize the SliverAppBar behavior
//       expandedHeight: 100.0, // Height of the expanded app bar
//       // collapsedHeight: 60.0, // Height of the collapsed app bar
      
//       leading: SizedBox(
//         height: 50.0,
//         child: Image.asset(
//           AssetsData.logo,
        
//           fit: BoxFit.fitWidth
//         ),
//       ), // Leading widget - your logo
//    // Optional title text
//       centerTitle: true, // Center the title text
//       actions: [
//         IconButton(
//           icon: const Icon(
//             FontAwesomeIcons.magnifyingGlass,
//             size: 25,
//           ),
//           onPressed: () {},
//         ),
//       ], // Trailing widget - your search icon
//     );
//   }
// }
