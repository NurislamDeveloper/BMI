import 'package:bmi_calculater/features/presentetions/style.dart/male_female.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Female extends StatefulWidget {
  const Female({
    super.key,
  });

  @override
  State<Female> createState() => _FemaleState();
}

class _FemaleState extends State<Female> {
  bool isFalse = true;
  void logicOfFemale() {
    setState(() {
      isFalse =!isFalse;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  width: 150,
                  height: 177,
                  child: Card(
                    color: const Color.fromARGB(255, 20, 2, 57),
                    child: Column(
                      children: [
                         Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/image/Ellipse.svg',
                                ),
                                SvgPicture.asset(
                                  'assets/image/vectorF.svg',
                                ),
                                const Gap(5),
                                InkWell(
                                  onTap: () {
                                    logicOfFemale();
                                  },
                                  child: Text(
                                    'Female'.toUpperCase(),
                                    style: TextStyle(
                                      color: isFalse == true
                                          ? Colors.white
                                          : Colors.orangeAccent,
                                      fontWeight: MaleAndFemale.fontWeight,
                                      fontSize: MaleAndFemale.size,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
               );
             }
           }
