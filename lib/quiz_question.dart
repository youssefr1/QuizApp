// ignore_for_file: public_member_api_docs, sort_constructors_first
class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String>  answers;
  List<String>? getstuffledAnswers() {
    final shufflelist = List.of(answers);
    shufflelist.shuffle();
    return shufflelist;
  }
}
