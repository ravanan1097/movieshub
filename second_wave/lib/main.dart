import 'package:flutter/material.dart';
import 'package:second_wave/screens/welcome_screen.dart';
import 'package:second_wave/screens/login_screen.dart';
import 'package:second_wave/screens/registration_screen.dart';
import 'package:second_wave/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        RegistrationScreen.routeName: (context) => RegistrationScreen(),
        ChatScreen.routeName: (context) => ChatScreen(),
      },
    );
  }
}
  