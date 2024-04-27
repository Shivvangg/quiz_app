import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startQuiz, {super.key});

  final void Function() startQuiz;

  void onPressed() {}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quizlogo.png',
            width: 175,
            //color: Color.fromARGB(52, 237, 224, 223),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Learn flutter the fun way!',
            style: TextStyle(
                color: Color.fromARGB(255, 227, 235, 242),
                fontSize: 24,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
