import 'package:flutter/material.dart';
import 'package:quiz_app_dec/dummydb.dart';
import 'package:quiz_app_dec/view/quiz_screen/quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.rightAnsCount});
  final int rightAnsCount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (starsIndex) => Padding(
                  padding: EdgeInsets.only(bottom: starsIndex == 1 ? 40 : 0),
                  child: Icon(
                    color: starsIndex < _calculatePercentage()
                        ? Colors.amber
                        : Colors.grey,
                    Icons.star,
                    size: starsIndex == 1 ? 90 : 50,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              "congratulations",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.amber),
            ),
            SizedBox(height: 20),
            Text(
              "Your Score",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Text(
              "right / totoal",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.amber),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizScreen(),
                    ));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                width: 200,
                child: Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.replay_circle_filled_rounded),
                    Text(
                      "Retry",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  int _calculatePercentage() {
    print(rightAnsCount);
    double percentage = (rightAnsCount / Dummydb.questions.length) * 100;
    print(percentage);

    if (percentage >= 80) {
      return 3;
    } else if (percentage >= 50) {
      return 2;
    } else if (percentage >= 30) {
      return 1;
    } else {
      return 0;
    }
  }
}
