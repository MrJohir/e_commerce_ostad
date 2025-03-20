import 'package:e_commerce_ostad/app/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String name = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(AssetsPath.logoSvg,width: 35,),
                  Text('data'),
                  Spacer(),
                ]
            )
        ),
      ),
    );
  }
}
