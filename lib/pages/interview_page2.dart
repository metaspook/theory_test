import 'package:flutter/material.dart';
import 'package:theory_test/widgets/divide_arrow_button.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class InterviewPage2 extends StatelessWidget {
  const InterviewPage2({Key? key}) : super(key: key);
  static const routeName = '/study/interview2';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InnerPageWidget(
      appBarTitle: 'Interview',
      child: ListView(
          padding:
              const EdgeInsets.only(right: 18, left: 18, top: 10, bottom: 30),
          children: [
            for (int i = 0; i < 4; i++)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: DivideArrowButton(
                  arrowColor: colorScheme.primary,
                  color: colorScheme.secondary,
                  title: Text(
                    'Observation',
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                  onTap: () {},
                ),
              ),
            const SizedBox(height: 30),
          ]),
    );
  }
}
