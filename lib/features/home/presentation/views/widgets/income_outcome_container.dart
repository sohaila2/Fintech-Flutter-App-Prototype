import 'package:flutter/material.dart';

class IncomeOutcomeContainer extends StatelessWidget {
  const IncomeOutcomeContainer({
    super.key, required this.iconButton, required this.text, required this.amount, required this.color,
  });

  final IconData iconButton;
  final Color color;
  final String text;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon(iconButton, color: color,size: 32,),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,

              ),
            ),
            const SizedBox(height: 5),
            Text(
              amount,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}