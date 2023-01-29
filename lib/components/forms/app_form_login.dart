// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:testing/components/buttons/app_button_submit.dart';
import 'package:testing/components/fields/app_field_email.dart';
import 'package:testing/components/fields/app_field_phone.dart';
import 'package:testing/consts/keys.dart';
import 'package:testing/consts/localizations.dart';

class AppFormLogin extends StatefulWidget {
  AppFormLogin({super.key});

  @override
  _AppFormLoginState createState() => _AppFormLoginState();
}

class _AppFormLoginState extends State<AppFormLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isSuccess = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          AppFieldEmail(),
          AppFieldPhone(),
          AppButtonSubmit(onPressed: _handleSubmit),
          if (_isSuccess) Text(labelsSuccess[keyLogin]!),
        ],
      ),
    );
  }

  void _handleSubmit() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isSuccess = true;
      });
    }
  }
}
