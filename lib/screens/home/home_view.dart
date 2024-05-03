import 'package:calculator_app/screens/home/home_viewmodel.dart';
import 'package:calculator_app/screens/home/widget/Display_screen.dart';
import 'package:calculator_app/widgets/custom_button.dart';
import 'package:calculator_app/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/resources/Colors/AppColors.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewmodel, child) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Caclulator Display
                Expanded(flex: 2, child: DisplayScreen()),
                //Calculator keys
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      // RoundedButton(
                                      //   text: 'e',
                                      //   onTap: () {
                                      //     viewmodel.expPressed();
                                      //   },
                                      //   textColor: AppColors.buttonText,
                                      //   backgroundColor:
                                      //       AppColors.buttonGreyBackground,
                                      //   fontSize: 30,
                                      //   height: screenSize.height *
                                      //       0.06, // 6% of screen height
                                      //   width: screenSize.width *
                                      //       0.18, // 15% of screen width
                                      // ),
                                      CustomButton(
                                        text: 'AC',
                                        onTap: () {
                                          viewmodel.clear();
                                        },
                                        textColor: AppColors.buttonText3,
                                        backgroundColor: AppColors
                                            .functionButtonGreyBackground,
                                        fontSize: 30,
                                        height: screenSize.height *
                                            0.1, // 10% of screen height
                                        width: screenSize.width * 0.2,
                                      ),
                                      CustomButton(
                                        text: '7',
                                        onTap: () {
                                          viewmodel.numberPressed(7);
                                        },
                                        textColor: AppColors.buttonText,
                                        backgroundColor:
                                            AppColors.buttonGreyBackground,
                                        fontSize: 30,
                                        height: screenSize.height *
                                            0.1, // 10% of screen height
                                        width: screenSize.width * 0.2,
                                      ),
                                      CustomButton(
                                        text: '4',
                                        onTap: () {
                                          viewmodel.numberPressed(4);
                                        },
                                        textColor: AppColors.buttonText,
                                        backgroundColor:
                                            AppColors.buttonGreyBackground,
                                        fontSize: 30,
                                        height: screenSize.height *
                                            0.1, // 10% of screen height
                                        width: screenSize.width * 0.2,
                                      ),
                                      CustomButton(
                                        text: '1',
                                        onTap: () {
                                          viewmodel.numberPressed(1);
                                        },
                                        textColor: AppColors.buttonText,
                                        backgroundColor:
                                            AppColors.buttonGreyBackground,
                                        fontSize: 30,
                                        height: screenSize.height *
                                            0.1, // 10% of screen height
                                        width: screenSize.width * 0.2,
                                      ),
                                    ]),
                                Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      // RoundedButton(
                                      //   text: 'π',
                                      //   onTap: () {
                                      //     viewmodel.piPressed();
                                      //   },
                                      //   textColor: AppColors.buttonText,
                                      //   backgroundColor:
                                      //       AppColors.buttonGreyBackground,
                                      //   fontSize: 30,
                                      //   height: screenSize.height *
                                      //       0.06, // 6% of screen height
                                      //   width: screenSize.width *
                                      //       0.18, // 15% of screen width
                                      // ),
                                      CustomButton(
                                        text: '<--',
                                        onTap: () {
                                          viewmodel.backspace();
                                        },
                                        textColor: AppColors.buttonText3,
                                        backgroundColor: AppColors
                                            .functionButtonGreyBackground,
                                        fontSize: 30,
                                        height: screenSize.height *
                                            0.1, // 10% of screen height
                                        width: screenSize.width * 0.2,
                                      ),
                                      CustomButton(
                                        text: '8',
                                        onTap: () {
                                          viewmodel.numberPressed(8);
                                        },
                                        textColor: AppColors.buttonText,
                                        backgroundColor:
                                            AppColors.buttonGreyBackground,
                                        fontSize: 30,
                                        height: screenSize.height *
                                            0.1, // 10% of screen height
                                        width: screenSize.width * 0.2,
                                      ),
                                      CustomButton(
                                        text: '5',
                                        onTap: () {
                                          viewmodel.numberPressed(5);
                                        },
                                        textColor: AppColors.buttonText,
                                        backgroundColor:
                                            AppColors.buttonGreyBackground,
                                        fontSize: 30,
                                        height: screenSize.height *
                                            0.1, // 10% of screen height
                                        width: screenSize.width * 0.2,
                                      ),
                                      CustomButton(
                                        text: '2',
                                        onTap: () {
                                          viewmodel.numberPressed(2);
                                        },
                                        textColor: AppColors.buttonText,
                                        backgroundColor:
                                            AppColors.buttonGreyBackground,
                                        fontSize: 30,
                                        height: screenSize.height *
                                            0.1, // 10% of screen height
                                        width: screenSize.width * 0.2,
                                      ),
                                    ]),
                              ]),
                          // = button
                          CustomButton(
                            text: '0',
                            onTap: () {
                              viewmodel.numberPressed(0);
                            },
                            textColor: AppColors.buttonText,
                            backgroundColor: AppColors.buttonGreyBackground,
                            fontSize: 30,
                            height:
                                screenSize.height * 0.1, // 10% of screen height
                            width: screenSize.width * 0.45,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // RoundedButton(
                          //   text: 'sin',
                          //   onTap: () {
                          //     viewmodel.sinPressed();
                          //   },
                          //   textColor: AppColors.buttonText,
                          //   backgroundColor: AppColors.buttonGreyBackground,
                          //   fontSize: 25,
                          //   height:
                          //       screenSize.height * 0.06, // 6% of screen height
                          //   width:
                          //       screenSize.width * 0.18, // 15% of screen width
                          // ),
                          CustomButton(
                              text: "/",
                              onTap: () {
                                viewmodel.operatorPressed('/');
                              },
                              textColor: AppColors.buttonText2,
                              backgroundColor: AppColors.darkBlue,
                              height: screenSize.height *
                                  0.1, // 10% of screen height
                              width: screenSize.width * 0.2,
                              fontSize: 40),
                          CustomButton(
                              text: "9",
                              onTap: () {
                                viewmodel.numberPressed(9);
                              },
                              textColor: AppColors.buttonText,
                              backgroundColor: AppColors.buttonGreyBackground,
                              height: screenSize.height *
                                  0.1, // 10% of screen height
                              width: screenSize.width * 0.2,
                              fontSize: 30),
                          CustomButton(
                              text: "6",
                              onTap: () {
                                viewmodel.numberPressed(6);
                              },
                              textColor: AppColors.buttonText,
                              backgroundColor: AppColors.buttonGreyBackground,
                              height: screenSize.height *
                                  0.1, // 10% of screen height
                              width: screenSize.width * 0.2,
                              fontSize: 30),
                          CustomButton(
                              text: "3",
                              onTap: () {
                                viewmodel.numberPressed(3);
                              },
                              textColor: AppColors.buttonText,
                              backgroundColor: AppColors.buttonGreyBackground,
                              height: screenSize.height *
                                  0.1, // 10% of screen height
                              width: screenSize.width * 0.2,
                              fontSize: 30),
                          CustomButton(
                              text: ".",
                              onTap: () {
                                viewmodel.dotPressed();
                              },
                              textColor: AppColors.buttonText,
                              backgroundColor: AppColors.buttonGreyBackground,
                              height: screenSize.height *
                                  0.1, // 10% of screen height
                              width: screenSize.width * 0.2,
                              fontSize: 30),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // RoundedButton(
                          //   text: 'cos',
                          //   onTap: () {
                          //     viewmodel.cosPressed();
                          //   },
                          //   textColor: AppColors.buttonText,
                          //   backgroundColor: AppColors.buttonGreyBackground,
                          //   fontSize: 25,
                          //   height:
                          //       screenSize.height * 0.06, // 6% of screen height
                          //   width:
                          //       screenSize.width * 0.18, // 15% of screen width
                          // ),
                          CustomButton(
                              text: "*",
                              onTap: () {
                                viewmodel.operatorPressed('*');
                              },
                              textColor: AppColors.buttonText2,
                              backgroundColor: AppColors.darkBlue,
                              height: screenSize.height *
                                  0.1, // 10% of screen height
                              width: screenSize.width * 0.19,
                              fontSize: 40),
                          CustomButton(
                              text: "-",
                              onTap: () {
                                viewmodel.operatorPressed('-');
                              },
                              textColor: AppColors.buttonText2,
                              backgroundColor: AppColors.darkBlue,
                              height: screenSize.height *
                                  0.1, // 10% of screen height
                              width: screenSize.width * 0.19,
                              fontSize: 40),
                          CustomButton(
                              text: "+",
                              onTap: () {
                                viewmodel.operatorPressed('+');
                              },
                              textColor: AppColors.buttonText2,
                              backgroundColor: AppColors.darkBlue,
                              height: screenSize.height *
                                  0.1, // 10% of screen height
                              width: screenSize.width * 0.19,
                              fontSize: 40),
                          CustomButton(
                            text: '=',
                            onTap: () {
                              viewmodel.calculate();
                            },
                            textColor: AppColors.secondaryColor,
                            backgroundColor: AppColors.lightBlue,
                            fontSize: 30,
                            height:
                                screenSize.height * 0.2, // 20% of screen height
                            width: screenSize.width * 0.19,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            backgroundColor: AppColors.mainBackGround,
          );
        });
  }
}
