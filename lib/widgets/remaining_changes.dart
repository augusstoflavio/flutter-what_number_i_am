import 'package:flutter/material.dart';

class RemainingChanges extends StatelessWidget {
  const RemainingChanges({
    super.key,
    required this.remainingChances,
  });

  final int remainingChances;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Row(
      children: [
        Text(
          "Remaining chances: ",
          style: theme.textTheme.bodySmall,
        ),
        Text(
          remainingChances.toString(),
          style: theme.textTheme.bodySmall,
        )
      ],
    );
  }
}
