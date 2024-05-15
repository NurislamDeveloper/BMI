import 'package:bmi_calculater/features/presentetions/style.dart/bmi_calculater_text.dart';
import 'package:bmi_calculater/features/presentetions/style.dart/main_text.dart';
import 'package:bmi_calculater/features/presentetions/style.dart/result_text.dart';
import 'package:bmi_calculater/features/presentetions/widgets/calculateButtom.dart';
import 'package:bmi_calculater/features/presentetions/widgets/female.dart';
import 'package:bmi_calculater/features/presentetions/widgets/height.dart';
import 'package:bmi_calculater/features/presentetions/widgets/male.dart';
import 'package:bmi_calculater/features/presentetions/widgets/weight_and_age.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'dart:math' as math;

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
        bottomNavigationBar: CalculateButtom(
          onTap: () {
            final res = weight / math.pow(weight / 100, 2);
            if (res <= 18.0) {
              dialogBuilder(context, AppText.thin, res.roundToDouble());
            } else if (res >= 18.5 && res <= 24.9) {
              dialogBuilder(context, AppText.normal, res.roundToDouble());
            } else if (res >= 25) {
              dialogBuilder(context, AppText.fat, res.roundToDouble());
            } else {
              dialogBuilder(context, AppText.sorry, res.roundToDouble());
            }
            
          },
        ),
      ),
    );
  }
}

Future<void> dialogBuilder(BuildContext context, String text, double res) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: const Color(0xff0A001F),
        title: const Center(child: Text(AppText.appBarTitle,style: TextStyle(color: Colors.white),)),
        content:  Text(
            text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
          ),
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text(AppText.backButton),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
