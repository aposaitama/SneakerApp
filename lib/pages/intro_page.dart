import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shop_app/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Lottie.asset('lib/assets/logo/logo.json'),
            ),
            Text(
              'A leader in athletic performance since 1949',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            MyButton(
              onTap: () => Navigator.pushNamed(context, '/shop_page'),
              icon: Icons.arrow_right_alt,
            )
          ],
        ),
      ),
    );
  }
}
