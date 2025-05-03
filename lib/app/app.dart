import 'package:e_commerce_ostad/app/app_routes.dart';
import 'package:e_commerce_ostad/feature/auth/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale('bn'),
      supportedLocales: [
        Locale('en'), // English
        Locale('bn'), // Spanish
      ],


      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: ()=>SplashScreen()),
        GetPage(name: '/splashScreen', page: ()=> SplashScreen()),
      ],
    );
  }
}