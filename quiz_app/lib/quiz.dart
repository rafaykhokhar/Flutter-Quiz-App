import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';
//import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
        // selectedAnswers = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(choosenAnswers: selectedAnswers,);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.green], //list of colors
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}









































// <---------------- TERNARRY EXPRESSION METHOD------->

// import 'package:flutter/material.dart';
// import 'package:quiz_app/start_screen.dart';
// import 'package:quiz_app/questions_screen.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});

//   @override
//   State<Quiz> createState() => _QuizState();
// }

// class _QuizState extends State<Quiz> {
//   // Widget? activeScreen;

// //  @override
// //   void initState() {
// //     activeScreen = StartScreen(switchScreen);
// //     super.initState();
// //   }

//   var activeScreen = 'start-screen';
//   void SwitchScreen() {
//     setState(() {
//       // activeScreen = const QuestionsScreen();
//       activeScreen = 'questions-screen';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.blue, Colors.green], //list of colors
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: activeScreen == 'start-screen'
//               ? StartScreen(SwitchScreen)
//               : const QuestionsScreen(),
//         ),
//       ),
//     );
//   }
// }


// <---------INIT METHOD--------->


// import 'package:flutter/material.dart';
// import 'package:quiz_app/start_screen.dart';
// import 'package:quiz_app/questions_screen.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});

//   @override
//   State<Quiz> createState() => _QuizState();
// }

// class _QuizState extends State<Quiz> {
//   Widget? activeScreen;

//  @override
//   void initState() {
//     activeScreen = StartScreen(SwitchScreen);
//     super.initState();
//   }

  
//   void SwitchScreen() {
//     setState(() {
//        activeScreen = const QuestionsScreen();
      
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.blue, Colors.green], //list of colors
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: activeScreen,
//         ),
//       ),
//     );
//   }
// }
