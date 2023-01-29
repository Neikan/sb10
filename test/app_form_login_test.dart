// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:testing/consts/keys.dart';
import 'package:testing/consts/localizations.dart';
import 'package:testing/views/view_signin.dart';

void main() {
  testWidgets('Tests to Login Form', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ViewSignin(),
      ),
    );

    const _widgetKeyEmail = Key(keyEmail);
    const _widgetKeyPhone = Key(keyPhone);
    const _widgetKeyButtonSubmit = Key(keyButtonSubmit);

    // Проверка наличия полей
    expect(find.byKey(_widgetKeyEmail), findsOneWidget);
    expect(find.byKey(_widgetKeyPhone), findsOneWidget);
    expect(find.byKey(_widgetKeyButtonSubmit), findsOneWidget);
    expect(find.text(labelsSuccess[keyLogin]!), findsNothing);

    // Проверка заполнения полей
    await tester.enterText(
        find.byKey(_widgetKeyEmail), 'sladkov.e.m@outlook.com');
    expect(find.text('sladkov.e.m@outlook.com'), findsOneWidget);

    await tester.enterText(find.byKey(_widgetKeyPhone), '89188900075');
    expect(find.text('89188900075'), findsOneWidget);

    // Проверка нажатия кнопки
    await tester.tap(find.byKey(_widgetKeyButtonSubmit));
    await tester.pump();

    // Проверка результата нажатия кнопки
    expect(find.text(labelsSuccess[keyLogin]!), findsOneWidget);
  });
}
