// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:testing/components/buttons/app_button_switch.dart';
import 'package:testing/components/forms/app_form_login.dart';
import 'package:testing/components/forms/app_form_registration.dart';
import 'package:testing/consts/keys.dart';
import 'package:testing/consts/localizations.dart';

enum FormType { login, register }

class ViewSignin extends StatefulWidget {
  ViewSignin({super.key});

  @override
  _ViewSigninState createState() => _ViewSigninState();
}

class _ViewSigninState extends State<ViewSignin> {
  FormType _formType = FormType.login;

  @override
  Widget build(BuildContext context) {
    final _isFormLogin = _formType == FormType.login;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          labelsForm[_isFormLogin ? keyLogin : keyRegistration]!,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _isFormLogin ? AppFormLogin() : AppFormRegistration(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    labelsQuestion[_isFormLogin ? keyLogin : keyRegistration]!,
                  ),
                  AppButtonSwitch(
                    isFormLogin: _isFormLogin,
                    onPressed: _switchForm,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _switchForm() {
    setState(() {
      _formType =
          _formType == FormType.login ? FormType.register : FormType.login;
    });
  }
}
