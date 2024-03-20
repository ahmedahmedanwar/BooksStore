import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

// static const routeName = '/drawer';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).primaryColorLight,
      child: Column(
        children: [
          AppBar(
            title: const Text(' Bookly'),
            automaticallyImplyLeading: false,
          ),

          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: buildListTile('Home', Icons.home, () {
              GoRouter.of(context).push(
                AppRouter.KHomeView,
              );
            }),
          ),
          const Divider(),
          // buildListTile(
          //     'Orders',
          //     Icons.payment,
          //         () {
          //       // Navigator.of(context).pushReplacementNamed(OrderScreen.routeName);
          //     }),
          //     const Divider(),
          buildListTile('Manage Books', Icons.book, () {
            // Navigator.of(context).pushReplacementNamed(UserProductsScreen.routeName);
          }),
        ],
      ),
    );
  }
}

Widget buildListTile(String title, IconData icon, VoidCallback tabHandler) {
  return ListTile(
    leading: Icon(
      icon,
      size: 30,
    ),
    title: Text(
      title,
      style: const TextStyle(
          fontFamily: 'Lato', fontSize: 25, fontWeight: FontWeight.bold),
    ),
    onTap: tabHandler,
  );
}
