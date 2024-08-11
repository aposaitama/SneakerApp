import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shop_app/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //header

          Column(
            children: [
              DrawerHeader(child: Lottie.asset('lib/assets/logo/logo.json')),
              MyListTile(
                icon: Icons.home,
                text: 'H O M E',
                onTap: () => Navigator.pop(context),
              ),
              MyListTile(
                icon: Icons.shopping_cart,
                text: 'C A R T',
                onTap: () => Navigator.pushNamed(context, '/cart_page'),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: MyListTile(
              icon: Icons.exit_to_app,
              text: 'L O G O U T',
              onTap: () => Navigator.pushNamed(context, '/intro_page'),
            ),
          ),

          //shop tile
          //cart tile
          //logout
        ],
      ),
    );
  }
}
