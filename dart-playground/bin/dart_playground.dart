import 'package:dart_playground/classes/todo.dart';
import 'package:dart_playground/fetchRandom.dart';

Future<void> main(List<String> arguments) async {

  // async simulates an api call
  String randomKeyboard = await fetchRandomInt();
  print(randomKeyboard);

  // manipulate a class
  runTodoExample();
  // filter out only specific labels
  //runTodoExample(label: "hobbit");

  //runTodoExampleWithDelay();
}