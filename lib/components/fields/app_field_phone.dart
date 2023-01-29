// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:testing/consts/keys.dart';
import 'package:testing/consts/localizations.dart';
import 'package:testing/consts/validations.dart';

class AppFieldPhone extends StatelessWidget {
  AppFieldPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: Key(keyPhone),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
      decoration: InputDecoration(labelText: labelsField[keyPhone]),
      validator: (value) {
        if (value == '') return fieldRequired;

        return null;
      },
    );
  }
}
