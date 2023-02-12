// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:testing/consts/keys.dart';
import 'package:testing/consts/localizations.dart';
import 'package:testing/consts/validations.dart';
import 'package:testing/utils/validations.dart';

class AppFieldEmail extends StatelessWidget {
  AppFieldEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: Key(keyEmail),
      decoration: InputDecoration(labelText: labelsField[keyEmail]),
      validator: (value) {
        if (value == '') return fieldRequired;

        if (!validateEmail(value)) return fieldFormatError;

        return null;
      },
    );
  }
}
