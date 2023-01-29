// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:testing/consts/keys.dart';
import 'package:testing/consts/localizations.dart';
import 'package:testing/consts/validations.dart';

class AppFieldFirstName extends StatelessWidget {
  AppFieldFirstName({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: Key(keyFirstName),
      decoration: InputDecoration(labelText: labelsField[keyFirstName]),
      validator: (value) {
        if (value == '') return fieldRequired;

        return null;
      },
    );
  }
}
