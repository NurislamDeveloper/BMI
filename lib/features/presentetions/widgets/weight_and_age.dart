import 'package:bmi_calculater/features/presentetions/style.dart/height_text.dart';
import 'package:bmi_calculater/features/presentetions/style.dart/styleOfOn.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WeightAndHeightCards extends StatelessWidget {
  const WeightAndHeightCards({
    super.key,
    required this.textOfweightAndage,
    required this.numberOfWeigthAndAge,
    required this.iconsOfweightAndHeightRemove,
    required this.iconsOfweightAndHeightAdd,
    required this.onPressedRemove,
    required this.onPressedAdd,
  });
  final String textOfweightAndage;
  final int numberOfWeigthAndAge;
  final IconData iconsOfweightAndHeightRemove;
  final IconData iconsOfweightAndHeightAdd;
  final void Function() onPressedRemove;
  final void Function() onPressedAdd;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 155,
      height: 190,
      child: Card(
        color: const Color.fromARGB(255, 20, 2, 57),
        child: Column(
          children: [
            const Gap(33),
            Text(
              textOfweightAndage.toUpperCase(),
              style: Height.heightOfstyle,
            ),
            Text(
              '$numberOfWeigthAndAge'.toUpperCase(),
              style: One.first,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: onPressedRemove,
                  icon: Icon(
                    iconsOfweightAndHeightRemove,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: onPressedAdd,
                  icon: Icon(
                    iconsOfweightAndHeightAdd,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
