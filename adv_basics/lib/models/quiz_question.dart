class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shulledList = List.of(answers);
    shulledList.shuffle();

    return shulledList;
  }
}
