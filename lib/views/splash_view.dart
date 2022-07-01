import 'package:flutter/material.dart';
import 'package:kanigoro_web/views/home_view.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:page_transition/page_transition.dart';

class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          PageTransition(child: HomeView(), type: PageTransitionType.fade));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
          height: 50,
          width: 50,
          child: LoadingIndicator(
            indicatorType: Indicator.ballScale,
            colors: [
              Color.fromARGB(255, 96, 205, 255),
            ],
          )),
    );
  }
}
