import 'package:flutter/material.dart';

class EarningsWidget extends StatelessWidget {
  const EarningsWidget({super.key, required this.initial, required this.title, required this.amount, required this.color});
  final String initial;
  final String title;
  final String amount;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 140,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.pink[50],
              child: Text(
                initial,
                style: const TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 28),
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(height: 5),
            Text(
              amount,
              style: const TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
