import 'package:flutter/material.dart';
import 'package:shop_app/components/main_widget_tile.dart';
import 'package:shop_app/components/my_drawer.dart';
import 'package:shop_app/components/sneakers_list.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('Shop Page'),
        ),
        drawer: MyDrawer(),
        body: SizedBox(
          height: 550,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sneakerList.length,
              itemBuilder: (BuildContext context, index) {
                return sneakerList[index];
              }),
        ));
  }
}
