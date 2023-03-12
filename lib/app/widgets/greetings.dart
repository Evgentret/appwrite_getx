import 'package:flutter/material.dart';

class Greetings extends StatelessWidget {
  final username;
  final message;
  const Greetings(this.username, this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container (
        child: Text(username+', '+'nice to meet you!'+'\n$message'));
  }
}
