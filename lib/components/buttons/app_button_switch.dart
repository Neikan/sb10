// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:testing/consts/keys.dart';
import 'package:testing/consts/localizations.dart';

class AppButtonSwitch extends StatelessWidget {
  final bool isFormLogin;
  final VoidCallback onPressed;

  AppButtonSwitch({
    super.key,
    required this.isFormLogin,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: const Key(keyButtonSwitch),
      child: Text(
        labelsForm[isFormLogin ? keyRegistration : keyLogin]!,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      onPressed: onPressed,
    );
  }
}
