import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizzier/topics/topics.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const FlutterLogo(
                size: 150,
              ),
              Flexible(
                child: LoginButton(
                  color: Colors.deepPurple,
                  icon: FontAwesomeIcons.userNinja,
                  text: 'Continue as Guest',
                  loginMethod: (context) => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TopicsScreen(),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class LoginButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final Function loginMethod;

  const LoginButton(
      {super.key,
      required this.color,
      required this.icon,
      required this.text,
      required this.loginMethod});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        icon: Icon(icon, color: Colors.white, size: 20),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(24),
          backgroundColor: color,
        ),
        onPressed: () => loginMethod(context),
        label: const Text('Continue as Guest'),
      ),
    );
  }
}
