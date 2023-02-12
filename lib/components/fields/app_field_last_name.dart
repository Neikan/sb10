// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:testing/consts/keys.dart';
import 'package:testing/consts/localizations.dart';
import 'package:testing/consts/validations.dart';

class AppFieldLastName extends StatelessWidget {
  AppFieldLastName({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: Key(keyLastName),
      decoration: InputDecoration(labelText: labelsField[keyLastName]),
      validator: (value) {
        if (value == '') return fieldRequired;

        return null;
      },
    );
  }
}
