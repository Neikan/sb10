// Project imports:
import 'package:testing/consts/validations.dart';

bool validateEmail(String? value) =>
    value == null ? false : regExpEmail.hasMatch(value);
