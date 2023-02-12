// Package imports:
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:testing/consts/keys.dart';
import 'package:testing/consts/localizations.dart';

void main() {
  group('Tests to Login Form', () {
    FlutterDriver? _driver;

    setUpAll(() async {
      _driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (_driver != null) {
        await _driver!.close();
      }
    });

    // Проверка полей
    final _fieldEmail = find.byValueKey(keyEmail);
    final _fieldPhone = find.byValueKey(keyPhone);
    final _buttonSubmit = find.byValueKey(keyButtonSubmit);

    test('Test field Email', () async {
      await _driver!.tap(_fieldEmail);
      await _driver!.waitFor(find.text(''));
      await _driver!.enterText('sladkov.e.m@outlook.com');
      await _driver!.waitFor(find.text('sladkov.e.m@outlook.com'));
    });

    test('Test field Phone', () async {
      await _driver!.tap(_fieldPhone);
      await _driver!.waitFor(find.text(''));
      await _driver!.enterText('Random text');
      await _driver!.waitFor(find.text(''));
      await _driver!.enterText('89188900075');
      await _driver!.waitFor(find.text('89188900075'));
    });

    // Проверка нажатия кнопки
    test('Test button Submit', () async {
      await _driver!.tap(_buttonSubmit);
    });

    // Проверка результата нажатия кнопки
    test('Test successful login', () async {
      await _driver!.waitFor(find.text(labelsSuccess[keyLogin]!));
    });
  });

  group('Tests to Registration Form', () {
    FlutterDriver? _driver;

    setUpAll(() async {
      _driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (_driver != null) {
        await _driver!.close();
      }
    });

    final _butttonSwitch = find.byValueKey(keyButtonSwitch);

    // Переключение на вкладку Регистрация
    test('Test button Submit', () async {
      await _driver!.tap(_butttonSwitch);
    });

    final _fieldFirstName = find.byValueKey(keyFirstName);
    final _fieldLastName = find.byValueKey(keyLastName);
    final _fieldEmail = find.byValueKey(keyEmail);
    final _fieldPhone = find.byValueKey(keyPhone);
    final _butttonSubmit = find.byValueKey(keyButtonSubmit);

    // Проверка полей
    test('Test field First name', () async {
      await _driver!.tap(_fieldFirstName);
      await _driver!.waitFor(find.text(''));
      await _driver!.enterText('Eugene');
      await _driver!.waitFor(find.text('Eugene'));
    });

    test('Test field Last name', () async {
      await _driver!.tap(_fieldLastName);
      await _driver!.waitFor(find.text(''));
      await _driver!.enterText('Sladkov');
      await _driver!.waitFor(find.text('Sladkov'));
    });

    test('Test field Email', () async {
      await _driver!.tap(_fieldEmail);
      await _driver!.waitFor(find.text(''));
      await _driver!.enterText('sladkov.e.m@outlook.com');
      await _driver!.waitFor(find.text('sladkov.e.m@outlook.com'));
    });

    test('Test field Phone', () async {
      await _driver!.tap(_fieldPhone);
      await _driver!.waitFor(find.text(''));
      await _driver!.enterText('Random text');
      await _driver!.waitFor(find.text(''));
      await _driver!.enterText('89188900075');
      await _driver!.waitFor(find.text('89188900075'));
    });

    // Проверка нажатия кнопки
    test('Test button Submit', () async {
      await _driver!.tap(_butttonSubmit);
    });

    // Проверка результата нажатия кнопки
    test('Test successful registration', () async {
      await _driver!.waitFor(find.text(labelsSuccess[keyRegistration]!));
    });
  });
}
