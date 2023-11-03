import 'package:flutter/material.dart';

class CustomTextFields extends StatelessWidget {
  const CustomTextFields({
    super.key,
    required this.number1Controller,
    required this.number2Controller,
  });

  final TextEditingController number1Controller;
  final TextEditingController number2Controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: TextField(
              controller: number1Controller,
              decoration: InputDecoration(
                labelText: 'Number 1',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Colors.grey.shade500,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Colors.grey.shade500,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
                prefixIcon: const Icon(Icons.looks_one),
                hintText: 'Enter number 1',
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            child: TextField(
              controller: number2Controller,
              decoration: InputDecoration(
                labelText: 'Number 2',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Colors.grey.shade500,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Colors.grey.shade500,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
                prefixIcon: const Icon(Icons.looks_two),
                hintText: 'Enter number 2',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
