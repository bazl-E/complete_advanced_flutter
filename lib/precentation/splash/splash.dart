import 'dart:async';

import 'package:advanced_flutter/precentation/resources/assets_manager.dart';
import 'package:advanced_flutter/precentation/resources/color_manager.dart';
import 'package:advanced_flutter/precentation/resources/routes_manager.dart';
import 'package:flutter/material.dart';

class SpalshView extends StatefulWidget {
  SpalshView({Key? key}) : super(key: key);

  @override
  _SpalshViewState createState() => _SpalshViewState();
}

class _SpalshViewState extends State<SpalshView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(Duration(seconds: 2), _goNextPage);
  }

  _goNextPage() {
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: Image(
          image: AssetImage(
            ImageAssets.splashLogo,
          ),
        ),
      ),
    );
  }
}
