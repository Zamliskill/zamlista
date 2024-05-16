import 'package:flutter/material.dart';
import 'package:zamlista/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "WELCOME TO AJMAN CAR RECOVERY",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: defaultPadding * 2),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/icons/chats.png"),
                    height: 250,
                  ),
                  Image(
                    image: AssetImage("assets/icons/chats2.png"),
                    height: 250,
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
