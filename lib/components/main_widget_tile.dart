import 'package:flutter/material.dart';
import 'package:shop_app/components/my_button.dart';

class MainCarousel extends StatelessWidget {
  final String sneakerTitle;
  final double sneakerPrice;
  final String sneakerImage;

  MainCarousel({
    super.key,
    required this.sneakerImage,
    required this.sneakerPrice,
    required this.sneakerTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              sneakerImage,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            sneakerTitle,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sneakerPrice.toString(),
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: MyButton(
                  onTap: null,
                  icon: Icons.add,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
