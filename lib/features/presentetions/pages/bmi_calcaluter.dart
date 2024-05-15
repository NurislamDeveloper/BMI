import 'package:bmi_calculater/features/presentetions/style.dart/bmi_calculater_text.dart';
import 'package:bmi_calculater/features/presentetions/style.dart/main_text.dart';
import 'package:bmi_calculater/features/presentetions/style.dart/text_and_style_of_calculater.dart';
import 'package:bmi_calculater/features/presentetions/widgets/female.dart';
import 'package:bmi_calculater/features/presentetions/widgets/height.dart';
import 'package:bmi_calculater/features/presentetions/widgets/male.dart';
import 'package:bmi_calculater/features/presentetions/widgets/weight_and_age.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BmiCalculater extends StatefulWidget {
  const BmiCalculater({super.key});

  @override
  State<BmiCalculater> createState() => _BmiCalculaterState();
}

class _BmiCalculaterState extends State<BmiCalculater> {
  double slider = 180;
  int weight = 0;
  void removeWeight() {
    setState(
      () {
        weight--;
      },
    );
  }

  void addWeight() {
    setState(
      () {
        weight++;
      },
    );
  }

  int age = 0;
  void removeAge() {
    setState(
      () {
        age--;
      },
    );
  }

  void addAge() {
    setState(
      () {
        age++;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            children: [
              const Center(
                child: Text(Bmi_text.bmiText, style: MainText.mainText),
              ),
              const Gap(35),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Male(),
                  Gap(35),
                  Female(),
                ],
              ),
              const Gap(18),
              HeightCards(
                height: slider,
                widget: Slider(
                  activeColor: Colors.white,
                  inactiveColor: const Color.fromARGB(255, 93, 92, 92),
                  thumbColor: Colors.pinkAccent,
                  min: 0,
                  max: 200,
                  divisions: 200,
                  value: slider,
                  onChanged: (double value) {
                    setState(
                      () {
                        slider = value;
                      },
                    );
                  },
                ),
              ),
              const Gap(18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WeightAndHeightCards(
                    textOfweightAndage: 'weight',
                    numberOfWeigthAndAge: weight,
                    iconsOfweightAndHeightRemove: Icons.remove_circle_outline,
                    onPressedRemove: () {
                      removeWeight();
                    },
                    iconsOfweightAndHeightAdd: Icons.add_circle_outline,
                    onPressedAdd: () {
                      addWeight();
                    },
                  ),
                  const Gap(25),
                  WeightAndHeightCards(
                    textOfweightAndage: 'age',
                    numberOfWeigthAndAge: age,
                    iconsOfweightAndHeightRemove: Icons.remove_circle_outline,
                    onPressedRemove: () {
                      removeAge();
                    },
                    iconsOfweightAndHeightAdd: Icons.add_circle_outline,
                    onPressedAdd: () {
                      addAge();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: InkWell(
          onTap: () {
            
          },
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
        ),
      ),
    );
  }
}
