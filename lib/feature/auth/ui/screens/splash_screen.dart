import 'package:e_commerce_ostad/app/app_colors.dart';
import 'package:e_commerce_ostad/app/app_configs.dart';
import 'package:e_commerce_ostad/app/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String name = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    moveToNextScreen();
  }
  Future<void> moveToNextScreen()async{
    Future.delayed(Duration(seconds: 3));
    Get.offNamed('/splashScreen');
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(AssetsPath.logoSvg,width: screenWidth * 0.3,fit: BoxFit.fill,),
                  Spacer(),
                  SizedBox(
                    height: screenHeight * 0.035,
                      width: screenWidth * 0.04,
                      child: CircularProgressIndicator(strokeWidth: 3,color: AppColors.themeColor,)),
                  SizedBox(height: 16,),
                  Text("${AppLocalizations.of(context)!.helloWorld} Version${AppConfigs.currentAppVersion}"),
                  SizedBox(height: 8,),
                ]
            )
        ),
      ),
    );
  }
}
