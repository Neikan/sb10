// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:testing/views/view_signin.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => ViewSignin(),
      },
    );
  }
}
