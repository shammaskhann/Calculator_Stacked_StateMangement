import 'dart:developer';

import 'package:calculator_app/resources/Colors/AppColors.dart';
import 'package:calculator_app/screens/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

class DisplayScreen extends ViewModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    final Size screenSize = MediaQuery.of(context).size;
    List secondaryDisplay = viewModel.secondaryDisplay.split("");
    log(secondaryDisplay.toString());
    return Container(
      padding: const EdgeInsets.all(15),
      color: AppColors.mainBackGround,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 30,
          ),

          Container(
            height: screenSize.height * 0.05,
            width: double.infinity,
            color: AppColors.mainBackGround,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                textAlign: TextAlign.end,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Orbitron',
                    fontWeight: FontWeight.bold,
                  ),
                  children: viewModel.secondaryDisplay.split('').map((char) {
                    return TextSpan(
                      text: char,
                      style: TextStyle(
                        color: '+-*/'.contains(char)
                            ? AppColors.primaryColor
                            : AppColors.buttonText3,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //Calculator Display
          Container(
            height: screenSize.height * 0.05,
            width: double.infinity,
            color: AppColors.mainBackGround,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                viewModel.display,
                textAlign: TextAlign.end,
                style: const TextStyle(
                  fontSize: 30,
                  fontFamily: 'Orbitron',
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
