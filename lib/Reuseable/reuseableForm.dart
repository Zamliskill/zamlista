import 'package:flutter/material.dart';
import 'package:zamlista/constants.dart';

class reuseableForm extends StatefulWidget {
  const reuseableForm({super.key});

  @override
  State<reuseableForm> createState() => _reuseableFormState();
}

class _reuseableFormState extends State<reuseableForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      cursorColor: kPrimaryColor,
      onSaved: (email) {},
      decoration: const InputDecoration(
        hintText: "Your email",
        prefixIcon: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Icon(Icons.person),
        ),
      ),
    );
  }
}
