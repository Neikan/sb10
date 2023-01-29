// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:testing/components/buttons/app_button_submit.dart';
import 'package:testing/components/fields/app_field_email.dart';
import 'package:testing/components/fields/app_field_first_name.dart';
import 'package:testing/components/fields/app_field_last_name.dart';
import 'package:testing/components/fields/app_field_phone.dart';
import 'package:testing/consts/keys.dart';
import 'package:testing/consts/localizations.dart';

class AppFormRegistration extends StatefulWidget {
  AppFormRegistration({super.key});

  @override
  _AppFormRegistrationState createState() => _AppFormRegistrationState();
}

class _AppFormRegistrationState extends State<AppFormRegistration> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isSuccess = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppFieldFirstName(),
          AppFieldLastName(),
          AppFieldPhone(),
          AppFieldEmail(),
          AppButtonSubmit(onPressed: _handleSubmit),
          if (_isSuccess) Text(labelsSuccess[keyRegistration]!),
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
