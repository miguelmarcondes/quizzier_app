import 'package:flutter/material.dart';
import 'package:quizzier/routes.dart';
import 'package:quizzier/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: appRoutes,
      theme: appTheme,
    );
  }
}
