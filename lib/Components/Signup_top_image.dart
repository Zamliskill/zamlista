import 'package:flutter/material.dart';
import 'package:zamlista/constants.dart';

class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Sign Up".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: defaultPadding * 4),
        const Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: Image(image: AssetImage("assets/icons/signup.png"),),
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: defaultPadding * 4),
      ],
    );
  }
}
