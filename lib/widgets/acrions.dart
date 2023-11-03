import 'package:euclidean_algo_task/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GCDActions extends StatelessWidget {
  const GCDActions(
      {super.key, required this.onPressed1, required this.onPressed2});

  final Function() onPressed1;
  final Function() onPressed2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: onPressed2,
              backgroundColor: Colors.grey.shade200,
              textColor: Colors.black,
              text: 'Reset',
              fontSize: 20,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: onPressed1,
              backgroundColor: const Color(0xffA97C37),
              textColor: Colors.white,
              text: 'Solve',
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
