import 'package:flutter/material.dart';

class TransactionsWidget extends StatelessWidget {
  const TransactionsWidget({super.key, required this.title, required this.description, required this.amount, required this.color, required this.image});
  final String title;
  final String description;
  final String amount;
  final Color color;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
        leading: SizedBox(
        width: 30,
        height: 30,
        child: Image.asset(image),
      ),
      title: Text(title),
      subtitle: Text(description,style: TextStyle(color:  Colors.grey),),
      trailing: Text(
        amount,
        style: TextStyle(
          color: amount.startsWith('-') ? Colors.red : Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: 14
        ),
      ),
    ),

    ),
    );
  }
}
