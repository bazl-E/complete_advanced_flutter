import 'package:advanced_flutter/precentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  OnBoardingView({Key? key}) : super(key: key);

  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Center(child: Text('Welcome To on Boarding')),
    );
  }
}
