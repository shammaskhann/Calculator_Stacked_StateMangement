import 'package:calculator_app/resources/Colors/AppColors.dart';
import 'package:calculator_app/resources/Icons/AppIcons.dart';
import 'package:calculator_app/screens/splash/splash_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        onViewModelReady: (model) => model.onReady(),
        viewModelBuilder: () => SplashViewModel(),
        builder: (context, model, child) => Scaffold(
              body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppIcons.appIcon,
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: MediaQuery.of(context).size.width * 0.35,
                      ),
                      const Text(
                        'Calculator App',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Orbitron',
                            color: AppColors.secondaryColor),
                      )
                    ]),
              ),
              backgroundColor: AppColors.primaryColor,
            ));
  }
}
