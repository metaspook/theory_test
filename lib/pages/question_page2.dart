import 'package:flutter/material.dart';
import 'package:theory_test/widgets/center_title_button.dart';
import 'package:theory_test/widgets/divide_arrow_button.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class QuestionPage2 extends StatelessWidget {
  const QuestionPage2({Key? key}) : super(key: key);
  static const routeName = '/practice/question2';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InnerPageWidget(
      appBarTitle: 'Question 1/10',
      child: ListView(
          padding: const EdgeInsets.only(top: 10, bottom: 30),
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'You are on a long motorway journey.What should you do if you start to feel sleepy.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.5, color: colorScheme.primary),
              ),
            ),
            for (int i = 0; i < 4; i++)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                child: DivideArrowButton(
                  arrowColor: colorScheme.primary,
                  color: colorScheme.secondary,
                  title: Row(
                    children: [
                      Text(
                        'Observation',
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                      if (i == 0) ...[
                        const SizedBox(width: 5),
                        Icon(
                          Icons.check_circle_rounded,
                          color: Colors.green.shade600,
                        )
                      ]
                    ],
                  ),
                  onTap: () {},
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 25),
              child: CenterTitleButton(
                  color: colorScheme.secondary,
                  titleColor: colorScheme.primary,
                  title: 'Explain',
                  onPressed: () {}),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      primary: colorScheme.secondary,
                      onPrimary: colorScheme.primary,
                      textStyle: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                      elevation: 5,
                      shadowColor: Colors.white.withOpacity(0.85),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios_rounded,
                          color: colorScheme.primary,
                        ),
                        const SizedBox(width: 10),
                        const Text('Previous'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      primary: colorScheme.secondary,
                      onPrimary: colorScheme.primary,
                      textStyle: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                      elevation: 5,
                      shadowColor: Colors.white.withOpacity(0.85),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Text('Next'),
                        const SizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: colorScheme.primary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
