import 'package:alkan_app/ui/auth/login/login_screen.dart';
import 'package:alkan_app/utils/app_assets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  static const String routeName = "splash";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();

  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        width: double.infinity, // Set width to fill the screen
        height: double.infinity,
        child: Image.asset(
          AppAssets.splash,
          fit: BoxFit.cover, // Ensures the image covers the screen
        ),
      ),
    );
  }
  void navigateToHome(){
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    });
  }
}
