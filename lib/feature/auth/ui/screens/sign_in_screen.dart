import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../app/assets_path.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(body: Column(children: [
      SvgPicture.asset(AssetsPath.logoSvg,width: screenWidth * 0.03,fit: BoxFit.fill,),
    ],),);
  }
}
