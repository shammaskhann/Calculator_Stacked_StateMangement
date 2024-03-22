// import 'dart:developer';
// import 'dart:math';
// import 'package:stacked/stacked.dart';

// class HomeViewModel extends BaseViewModel {
//   String secondaryDisplay = '';
//   String display = '0';
//   bool resultShown = false;
//   void numberPressed(int number) {
//     if (display == '0') {
//       secondaryDisplay = '0';
//       display = number.toString();
//     } else {
//       display = display + number.toString();
//     }
//     notifyListeners();
//   }

//   void clear() {
//     display = '0';
//     secondaryDisplay = '';
//     notifyListeners();
//   }

//   void backspace() {
//     //to check if there is there is space with operate so that it could be remove in one go

//     if (display == '') {
//       display = '0';
//     } else {
//       display = display.substring(0, display.length - 1);
//     }
//     notifyListeners();
//   }

//   void operatorPressed(String operator) {
//     //check if two operator dont come together
//     if (display.endsWith(
//           ' + ',
//         ) ||
//         display.endsWith(' - ') ||
//         display.endsWith(' * ') ||
//         display.endsWith(' / ')) {
//       display = display.substring(0, display.length - 1);
//     }
//     display = "$display $operator ";
//     notifyListeners();
//   }

//   void calculate() {
//     resultShown = true;
//     List<String> calculateFromDisplay = display.split(" ");
//     // (calculateFromDisplay.toString());
//     double result = 0;
//     if (calculateFromDisplay.length == 1) {
//       return;
//     }
//     for (int i = 0; i < calculateFromDisplay.length; i++) {
//       if (calculateFromDisplay[i] == '+') {
//         result = double.parse(calculateFromDisplay[i - 1]) +
//             double.parse(calculateFromDisplay[i + 1]);
//       } else if (calculateFromDisplay[i] == '-') {
//         result = double.parse(calculateFromDisplay[i - 1]) -
//             double.parse(calculateFromDisplay[i + 1]);
//       } else if (calculateFromDisplay[i] == '*') {
//         result = double.parse(calculateFromDisplay[i - 1]) *
//             double.parse(calculateFromDisplay[i + 1]);
//       } else if (calculateFromDisplay[i] == '/') {
//         result = double.parse(calculateFromDisplay[i - 1]) /
//             double.parse(calculateFromDisplay[i + 1]);
//       }
//     }
//     double.parse(result.toStringAsFixed(3));

//     secondaryDisplay = display;
//     display = result.toString();
//     notifyListeners();
//   }

//   void sinPressed() {
//     double result = sin(double.parse(display));
//     secondaryDisplay = display;
//     display = result.toString();
//     notifyListeners();
//   }

//   void cosPressed() {
//     double result = cos(double.parse(display));
//     secondaryDisplay = display;
//     display = result.toString();
//     notifyListeners();
//   }

//   void expPressed() {
//     double result = exp(double.parse(display));
//     secondaryDisplay = display;
//     display = result.toString();
//     notifyListeners();
//   }

//   void dotPressed() {
//     display = '$display.';
//     notifyListeners();
//   }

//   void piPressed() {
//     display = '3.14159265359';
//     notifyListeners();
//   }
// }
import 'dart:developer';
import 'dart:math';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String secondaryDisplay = '';
  String display = '0';

  void numberPressed(int number) {
    if (display == '0') {
      secondaryDisplay = '0';
      display = number.toString();
    } else {
      display = display + number.toString();
    }
    notifyListeners();
  }

  void clear() {
    display = '0';
    secondaryDisplay = '';
    notifyListeners();
  }

  void backspace() {
    if (display != '0' && display.length > 1) {
      display = display.substring(0, display.length - 1);
    } else {
      display = '0';
    }
    notifyListeners();
  }

  void operatorPressed(String operator) {
    if (!display.endsWith(' ') && !display.endsWith('.')) {
      display = "$display $operator ";
    }
    notifyListeners();
  }

  void calculate() {
    List<String> calculateFromDisplay = display.split(" ");
    double result = 0;
    if (calculateFromDisplay.length == 1) {
      return;
    }
    for (int i = 0; i < calculateFromDisplay.length; i++) {
      if (calculateFromDisplay[i] == '+') {
        result = double.parse(calculateFromDisplay[i - 1]) +
            double.parse(calculateFromDisplay[i + 1]);
      } else if (calculateFromDisplay[i] == '-') {
        result = double.parse(calculateFromDisplay[i - 1]) -
            double.parse(calculateFromDisplay[i + 1]);
      } else if (calculateFromDisplay[i] == '*') {
        result = double.parse(calculateFromDisplay[i - 1]) *
            double.parse(calculateFromDisplay[i + 1]);
      } else if (calculateFromDisplay[i] == '/') {
        if (double.parse(calculateFromDisplay[i + 1]) == 0) {
          display = 'Error: Division by zero';
          notifyListeners();
          return;
        }
        result = double.parse(calculateFromDisplay[i - 1]) /
            double.parse(calculateFromDisplay[i + 1]);
      }
    }

    secondaryDisplay = display;
    display = result.toStringAsFixed(3);
    notifyListeners();
  }

  void sinPressed() {
    double result = sin(double.parse(display));
    secondaryDisplay = display;
    display = result.toString();
    notifyListeners();
  }

  void cosPressed() {
    double result = cos(double.parse(display));
    secondaryDisplay = display;
    display = result.toString();
    notifyListeners();
  }

  void expPressed() {
    double result = exp(double.parse(display));
    secondaryDisplay = display;
    display = result.toString();
    notifyListeners();
  }

  void dotPressed() {
    if (!display.contains('.')) {
      display = '$display.';
    }
    notifyListeners();
  }

  void piPressed() {
    display = '3.14159265359';
    notifyListeners();
  }
}
