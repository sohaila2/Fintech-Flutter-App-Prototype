import 'package:flutter/material.dart';

class TotalBalanceContainer extends StatelessWidget {
  const TotalBalanceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Total Balance',
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          const SizedBox(height: 10),
          const Text(
            '\$25,000.40',
            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("My Wallet",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14
                ),),
              IconButton(
                icon: const Icon(Icons.arrow_circle_right, color: Colors.white,size: 38,),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
