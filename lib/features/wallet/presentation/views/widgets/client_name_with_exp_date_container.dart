import 'package:flutter/material.dart';

class ClientNameWithExpDateContainer extends StatelessWidget {
  const ClientNameWithExpDateContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12,right: 12,top: 6,bottom: 6),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(14.0),
          bottomRight: Radius.circular(14.0),
        ),
        color: Colors.black,
      ),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(color: Colors.grey[400]!, fontSize: 12),
              ),
              const Text(
                'Client Name',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Text(
                  'Exp',
                  style: TextStyle(color: Colors.grey[400]!, fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Text(
                '09/23',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
