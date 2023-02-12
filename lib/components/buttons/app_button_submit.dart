// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:testing/consts/keys.dart';
import 'package:testing/consts/localizations.dart';

class AppButtonSubmit extends StatelessWidget {
  final VoidCallback onPressed;

  AppButtonSubmit({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: ElevatedButton(
        key: Key(keyButtonSubmit),
        child: Text(labelButtonSubmit),
        onPressed: onPressed,
      ),
    );
  }
}
