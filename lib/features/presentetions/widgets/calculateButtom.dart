import 'package:bmi_calculater/features/presentetions/style.dart/text_and_style_of_calculater.dart';
import 'package:flutter/material.dart';

class CalculateButtom extends StatelessWidget {
  const CalculateButtom({
    super.key, required this.onTap,
  });
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        height: 73,
        color: const Color(0xffFF0F65),
        child: const Center(
          child: Text(
            Calculater.calculate,
            style: Calculater.styleOfCal,
          ),
        ),
      ),
    );
  }
}