import 'package:flutter/material.dart';
import 'package:quiz_app_dec/dummydb.dart';
import 'package:quiz_app_dec/view/results_screen/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int rightAnsCount = 0;
  int questinIndex = 0;
  int? clickedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "${questinIndex + 1}/${Dummydb.questions.length}",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            )
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      textAlign: TextAlign.center,
                      Dummydb.questions[questinIndex].question,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
                Column(
                  spacing: 10,
                  children: List.generate(
                    4,
                    (optionIndex) => InkWell(
                      onTap: () {
                        if (clickedIndex == null) {
                          clickedIndex = optionIndex;
                          // to increment the right ans count
                          if (clickedIndex ==
                              Dummydb.questions[questinIndex].answerIndex) {
                            rightAnsCount++;
                            print(
                                "right ans count  ----------> $rightAnsCount");
                          }
                          setState(() {});
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: _buildOptionColor(optionIndex),
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                Dummydb.questions[questinIndex]
                                    .options[optionIndex],
                                style: TextStyle(

                                    //show options text color black if its right answer
                                    color: (clickedIndex != null &&
                                            Dummydb.questions[questinIndex]
                                                    .answerIndex ==
                                                optionIndex)
                                        ? Colors.black
                                        : Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.circle_outlined,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: clickedIndex != null,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (questinIndex < Dummydb.questions.length - 1) {
                          questinIndex++;
                          clickedIndex = null; //
                        } else {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                  rightAnsCount: rightAnsCount,
                                ),
                              ));
                        }
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Color? _buildOptionColor(int optionIndex) {
    //
    if (clickedIndex != null) {
      if (Dummydb.questions[questinIndex].answerIndex == optionIndex) {
        return Colors.green;
      }
    }

//
    if (clickedIndex == optionIndex) {
      if (clickedIndex == Dummydb.questions[questinIndex].answerIndex) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    }
    return null;
  }
}

// clicked index = 1
// ans = 1

//0
// 1
// 2
// 3
