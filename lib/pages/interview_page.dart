import 'package:flutter/material.dart';
import 'package:theory_test/widgets/divide_arrow_button.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class InterviewPage extends StatelessWidget {
  const InterviewPage({Key? key}) : super(key: key);
  static const routeName = '/study/interview';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InnerPageWidget(
      appBarTitle: 'Interview',
      child: ListView(
          padding: const EdgeInsets.only(top: 10, bottom: 30),
          children: [
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
                      const SizedBox(width: 5),
                      Icon(
                        Icons.check_circle_rounded,
                        color: Colors.green.shade600,
                      )
                    ],
                  ),
                  onTap: () {},
                ),
              ),
          ]),
    );
  }
}
