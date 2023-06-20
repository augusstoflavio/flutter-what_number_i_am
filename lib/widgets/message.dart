import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key, required this.message, required this.color});

  final String message;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Text(
      message,
      style: theme.textTheme.bodyMedium!.copyWith(color: color),
    );
  }
}
