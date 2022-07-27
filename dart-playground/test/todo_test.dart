import 'package:dart_playground/classes/todo.dart';
import 'package:test/test.dart';

void main() {
  test('Test Todo toggle ', () {
    Todo todo = Todo("todo test");
    todo.toggleCompleted();
    expect(todo.dateFinished, isNot(null));
    todo.toggleCompleted();
    expect(todo.dateFinished, null);
  });
}
