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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 150,
          child: TextField(
            controller: number1Controller,
            decoration: InputDecoration(
              labelText: 'Number 1',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color:
                      Colors.blue,
                ),
              ),
              prefixIcon:
                  const Icon(Icons.looks_one),
              hintText:
                  'Enter number 1',
            ),
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: 150,
          child: TextField(
            controller: number2Controller,
            decoration: InputDecoration(
              labelText: 'Number 2',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color:
                      Colors.blue,
                ),
              ),
              prefixIcon:
                  const Icon(Icons.looks_two),
              hintText:
                  'Enter number 2',
            ),
          ),
        ),
      ],
    );
  }
}