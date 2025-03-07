class QuestionsModel {
  String question;
  List<String> options;
  int answerIndex;

  QuestionsModel(
      {required this.question,
      required this.options,
      required this.answerIndex});
}
