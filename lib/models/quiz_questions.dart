class QuizQuestions {
  const QuizQuestions(this.ques, this.ans);

  final String ques;
  final List<String> ans;

  List<String> getShuffledOptions(){
    final shuffledCopy = List.of(ans);
    shuffledCopy.shuffle();
    return shuffledCopy;
  }
}