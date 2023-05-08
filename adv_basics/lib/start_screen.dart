import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),

          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 40,
          ),
          const Text("Learn Flutter the fun way!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              )),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                // padding: const EdgeInsets.only(top: 2, bottom: 2),
                backgroundColor: const Color.fromARGB(255, 104, 3, 121),
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start Quiz"))
        ],
      ),
    );
  }
}
