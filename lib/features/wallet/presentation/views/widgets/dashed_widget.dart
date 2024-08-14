import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';


class DashedWidget extends StatelessWidget {
  const DashedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.black,
      strokeWidth: 1,
      dashPattern: const [14, 4],
      borderType: BorderType.RRect,
      radius: const Radius.circular(8),
      child: Container(
        color: Colors.white,
        height: 180,
        width: 40,
        child: const Center(
          child: Icon(Icons.add_circle_sharp, size: 30),
        ),
      ),
    );
  }
}