import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_http/HTTPHelper.dart';
import 'package:flutter_http/sample_api.dart';
import 'package:flutter_http/screens/get_api_screen.dart';

import '../component/round_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  List<SampleApi>? fakeApi;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Hero(
                tag: 'logo',
                child: SizedBox(
                  height: 100.0,
                  child: FlutterLogo(
                    size: 100.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            RoundButton(
                title: 'Get Data',
                colour: Colors.lightBlueAccent,
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                }),
          ],
        ),
      ),
    );
  }
}
