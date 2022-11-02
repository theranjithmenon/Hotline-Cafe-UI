import 'package:flutter/material.dart';
import 'package:flutter_native_splash/cli_commands.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hotline_cafe/Pages/Home/NavBar.dart';
import 'package:hotline_cafe/Pages/LogIn/onBoardingScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: deprecated_member_use
  FlutterNativeSplash.removeAfter(initialization);
  final prefs = await SharedPreferences.getInstance();
  final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  runApp(MyApp(isLoggedIn: isLoggedIn));
}
Future initialization(BuildContext? context) async{
  await Future.delayed(const Duration(seconds: 3));
}
class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: isLoggedIn ? const NavBar() : const OnBoardingScreen(),
    );
  }
}
