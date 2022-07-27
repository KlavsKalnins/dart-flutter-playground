import '../mixins/label.dart';

class Todo with Label {
  String title;
  final DateTime dateCreated = DateTime.now();
  DateTime? dateFinished;

  Todo(this.title) {
    // init code
  }

  void display() {
    print('\n$title');
    print('created: $dateCreated');
    String completed = dateFinished != null ? "completed" : "working";
    print('labels: $labels');
    print('done: ${dateFinished != null} | $completed');
  }

  void toggleCompleted() {
    if (dateFinished != null) {
      dateFinished = null;
      return;
    }
    dateFinished = DateTime.now();
  }
}

List<Todo> initTodoExample() {
  List<Todo> todos = [];

  todos.addAll([Todo("Learn dart"), Todo("Learn flutter")]);

  // toggle first as done, running again will toggle it
  todos[0].toggleCompleted();
  todos[0].labels = ['hobbit'];
  todos[0].title = "edited todo";
  todos[1].labels = ['hobby', 'todo'];

  return todos;
}

void printTodos(List<Todo> todos, {String? label}) {
  for (int i = 0; i < todos.length; i++) {
    if (label != null) {
      bool shouldPrint = todos[i].printTodosByLabel(label);
      if (shouldPrint) {
        todos[i].display();
      }
      return;
    }
    todos[i].display();
  }
}

void runTodoExample({String? label}) {
  printTodos(initTodoExample(),label: label);
}

Future<void> runTodoExampleWithDelay() async {
  const printDelay = Duration(seconds: 2);
  List<Todo> todos = initTodoExample();

  for (int i = 0; i < todos.length; i++) {
    await Future.delayed(printDelay);
    todos[i].display();
  }
}
