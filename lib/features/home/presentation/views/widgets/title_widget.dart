import 'package:flutter/material.dart';


class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Text('See All',
          style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),)
      ],
    );
  }
}