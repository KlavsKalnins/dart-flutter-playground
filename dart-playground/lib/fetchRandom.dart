import 'dart:math';

List<String> randomList = ['QWERTY', 'Dvorak', 'Colemak', 'Workman'];

Future<String> fetchUserOrdegr() =>  
    Future.delayed(
      const Duration(seconds: 2),
      () => randomList[0],
    );


Future<String> fetchRandomInt() {
  final random = Random();
  return Future.delayed(const Duration(seconds: 2), () => randomList[random.nextInt(randomList.length)]);
}