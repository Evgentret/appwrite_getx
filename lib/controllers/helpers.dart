import 'dart:math';

String randomId(int letters) {
  String _letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
  String str = "";
  var random = Random();
  for (int i = 0; i < letters; i++) {
    str += _letters[random.nextInt(_letters.length)];
  }
  return str;
}