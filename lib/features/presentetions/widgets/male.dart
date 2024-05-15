import 'package:bmi_calculater/features/presentetions/style.dart/male_female.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Male extends StatefulWidget {
  const Male({
    super.key,
  });

  @override
  State<Male> createState() => _MaleState();
}

class _MaleState extends State<Male> {
  bool isTrue = false;
  void logicOfText() {
    isTrue = !isTrue;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 177,
      child: Card(
        color: const Color.fromARGB(255, 20, 2, 57),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(35),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 1.5),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset('assets/image/cicrle.svg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5, top: 5),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset('assets/image/vector.svg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 13,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SvgPicture.asset(
                            'assets/image/trainagle.svg',
                          ),
                        ),
                        const Gap(5),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                logicOfText();
                              });
                            },
                            child: Text(
                              'male'.toUpperCase(),
                              style: TextStyle(
                                color: isTrue == false
                                    ? Colors.white
                                    : Colors.orangeAccent,
                                fontWeight: MaleAndFemale.fontWeight,
                                fontSize: MaleAndFemale.size,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
