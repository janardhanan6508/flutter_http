import 'package:flutter/material.dart';
import 'package:flutter_http/screens/get_api_screen.dart';

import 'screens/welcome_screen.dart';

void main() async {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        // RegistrationScreen.id: (contexr) => RegistrationScreen(),
        // ChatScreen.id: (contexr) => ChatScreen(),
      },
    );
  }
}
