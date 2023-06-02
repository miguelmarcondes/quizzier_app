import 'package:quizzier/about/about.dart';
import 'package:quizzier/profile/profile.dart';
import 'package:quizzier/login/login.dart';
import 'package:quizzier/topics/topics.dart';
import 'package:quizzier/home/home.dart';

var appRoutes = {
  '/': (context) => const LoginScreen(),
  '/home': (context) => const HomeScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/about': (context) => const AboutScreen(),
};
