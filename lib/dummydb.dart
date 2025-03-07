import 'package:quiz_app_dec/model/questions_model.dart';

class Dummydb {
  List<QuestionsModel> questions = [
    QuestionsModel(
      question: "What is Flutter?",
      options: [
        "A programming language",
        "A framework for mobile development",
        "A database",
        "An IDE"
      ],
      answerIndex: 1,
    ),
    QuestionsModel(
      question: "Which programming language is used in Flutter?",
      options: ["Java", "Kotlin", "Dart", "Swift"],
      answerIndex: 2,
    ),
    QuestionsModel(
      question: "What is the widget tree in Flutter?",
      options: [
        "A data structure",
        "A hierarchical representation of widgets",
        "A debugging tool",
        "A type of animation"
      ],
      answerIndex: 1,
    ),
    QuestionsModel(
      question: "Which widget is used to create a button in Flutter?",
      options: ["Text", "Container", "ElevatedButton", "Column"],
      answerIndex: 2,
    ),
    QuestionsModel(
      question: "What is the purpose of the 'setState' method in Flutter?",
      options: [
        "To change the state of a widget",
        "To navigate to a new screen",
        "To call an API",
        "To dispose of a widget"
      ],
      answerIndex: 0,
    ),
    QuestionsModel(
      question: "Which Flutter widget is used to create a scrollable list?",
      options: ["Column", "ListView", "Row", "Stack"],
      answerIndex: 1,
    ),
    QuestionsModel(
      question: "What does the 'BuildContext' represent in Flutter?",
      options: [
        "The theme of an application",
        "The current screen of an app",
        "A handle to the location of a widget in the widget tree",
        "A type of widget"
      ],
      answerIndex: 2,
    ),
    QuestionsModel(
      question: "Which state management approach is built into Flutter?",
      options: ["Provider", "Bloc", "Riverpod", "setState"],
      answerIndex: 3,
    ),
    QuestionsModel(
      question:
          "What is the function of the 'async' and 'await' keywords in Dart?",
      options: [
        "To declare a loop",
        "To handle asynchronous operations",
        "To create a class",
        "To define an interface"
      ],
      answerIndex: 1,
    ),
    QuestionsModel(
      question: "Which package is used for making HTTP requests in Flutter?",
      options: ["dio", "http", "flutter_network", "fetch"],
      answerIndex: 1,
    ),
    QuestionsModel(
      question: "What is a StatelessWidget in Flutter?",
      options: [
        "A widget that does not have mutable state",
        "A widget that can change over time",
        "A widget that is removed from the tree",
        "A widget that only handles gestures"
      ],
      answerIndex: 0,
    ),
    QuestionsModel(
      question: "Which keyword is used to define a constant variable in Dart?",
      options: ["let", "final", "const", "static"],
      answerIndex: 2,
    ),
    QuestionsModel(
      question: "What is the purpose of 'pubspec.yaml' in a Flutter project?",
      options: [
        "To define Flutter dependencies",
        "To manage database connections",
        "To store app configurations",
        "To define navigation routes"
      ],
      answerIndex: 0,
    ),
    QuestionsModel(
      question: "What is hot reload in Flutter?",
      options: [
        "A way to refresh the device screen",
        "A feature that rebuilds the UI without restarting the app",
        "A debugging tool",
        "A method to clear cache"
      ],
      answerIndex: 1,
    ),
    QuestionsModel(
      question: "What is the difference between 'final' and 'const' in Dart?",
      options: [
        "Both are the same",
        "'final' is runtime constant, 'const' is compile-time constant",
        "'const' can be modified, 'final' cannot",
        "'final' is used for functions, 'const' is for variables"
      ],
      answerIndex: 1,
    ),
  ];
}
