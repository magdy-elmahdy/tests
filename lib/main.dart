import 'package:alkan_app/ui/auth/login/login_screen.dart';
import 'package:alkan_app/ui/auth/register/register_screen.dart';
import 'package:alkan_app/ui/home_screen.dart';
import 'package:alkan_app/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//flutter gen-l10n

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: Locale('ar'),
          initialRoute: LoginScreen.routeName ,
          routes: {
            SplashScreen.routeName : (_)=> SplashScreen(),
            LoginScreen.routeName : (_)=> LoginScreen(),
            RegisterScreen.routeName : (_)=> RegisterScreen(),
            HomeScreen.routeName : (_) => HomeScreen(),
          },
        );
      }
    );
  }
}
