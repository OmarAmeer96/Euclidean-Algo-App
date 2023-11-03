import 'package:euclidean_algo_task/utils/responsive.dart';
import 'package:euclidean_algo_task/utils/styles.dart';
import 'package:euclidean_algo_task/widgets/acrions.dart';
import 'package:euclidean_algo_task/widgets/custom_text_fields.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.title});
  final String title;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  int gcd = 0;

  void _calculateGCD() {
    int number1 = int.tryParse(number1Controller.text) ?? 0;
    int number2 = int.tryParse(number2Controller.text) ?? 0;
    setState(() {
      gcd = findGCD(number1, number2);
    });
  }

  int findGCD(int a, int b) {
    while (b != 0) {
      int temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'GCD Calculator App',
          style: Styles.gtSectraFineRegular
              .copyWith(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: Responsive.screenHeight(context) * 0.1,
                ),
                Text(
                  'GCD = $gcd',
                  style: Styles.montserratBold.copyWith(
                      fontSize: Responsive.textScaleFactor(context) * 55),
                ),
              ],
            ),
          ),
          const Expanded(
            child: SizedBox(
              height: 20,
            ),
          ),
          CustomTextFields(
            number1Controller: number1Controller,
            number2Controller: number2Controller,
          ),
          GCDActions(
            onPressed1: _calculateGCD,
            onPressed2: () {
              setState(() {
                gcd = 0;
                number1Controller.clear();
                number2Controller.clear();
              });
            },
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
