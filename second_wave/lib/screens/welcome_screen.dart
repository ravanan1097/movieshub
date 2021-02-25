import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:second_wave/screens/login_screen.dart';
import 'package:second_wave/screens/registration_screen.dart';
import 'package:second_wave/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const routeName = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animectrl;
  Animation anime;
  @override  
  void initState() {
    super.initState();
    animectrl =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    anime = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(animectrl);
    animectrl.forward();
    animectrl.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: anime.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  child: Image.asset('images/logo.png'),
                  height: 60.0,
                ),
              ),
              Flexible(
                child: TypewriterAnimatedTextKit(
                  text: ['Second Wave'],
                  textStyle: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black54),
                ),
              ),
            ]),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Log in',
              color: Colors.blue, 
              onpressed: () =>
                  Navigator.pushNamed(context, LoginScreen.routeName),
            ),
            RoundedButton(
              title: 'Register',
              color: Colors.blueAccent,
              onpressed: () =>
                  Navigator.pushNamed(context, RegistrationScreen.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
