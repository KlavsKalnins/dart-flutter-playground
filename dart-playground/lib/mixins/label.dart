mixin Label {
  List<String> labels = [];

  bool printTodosByLabel(String label) {
    if (labels.contains(label)) {
      return true;
    }
    return false;
  }
}
