import 'package:flutter/material.dart';

class GreetingTextComponent extends StatelessWidget {
  final String userName;

  const GreetingTextComponent({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hey $userName,\nHow is your diet?",
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
