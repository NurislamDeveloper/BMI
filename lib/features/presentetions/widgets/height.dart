import 'package:bmi_calculater/features/presentetions/style.dart/height_text.dart';
import 'package:bmi_calculater/features/presentetions/style.dart/styleOfOn.dart';
import 'package:flutter/material.dart';

class HeightCards extends StatelessWidget {
  const HeightCards({
    super.key, required this.widget, required this.height,
  });
  final Widget widget;
  final double height;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 335,
      height: 200,
      child: Card(
        color: const Color.fromARGB(255, 20, 2, 57),
        child: Column(
          children: [
            const SizedBox(height: 35,),
            const Text(
                Height.height,
                style: Height.heightOfstyle,
              ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[ 
            Text(
              '$height',
              style: One.first,
            ),
            const Text(
              'cm',
              style: One.second,
              ),
             ]
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: widget,
            ),
          ],
        ),
      ),
    );
  }
}
