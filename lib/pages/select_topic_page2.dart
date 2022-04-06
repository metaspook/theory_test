import 'package:flutter/material.dart';
import 'package:theory_test/widgets/center_title_button.dart';
import 'package:theory_test/widgets/divide_arrow_button.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class SelectTopic2 extends StatelessWidget {
  const SelectTopic2({Key? key}) : super(key: key);
  static const routeName = '/practice/select_topic2';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InnerPageWidget(
      appBarTitle: 'Select topic',
      child: ListView(
          padding: const EdgeInsets.only(top: 10, bottom: 30),
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 15, bottom: 15),
              child: Text(
                'Please select one or more topics and scroll down to start practising',
                textAlign: TextAlign.center,
                style: TextStyle(color: colorScheme.primary),
              ),
            ),
            for (int i = 0; i < 7; i++)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                child: DivideArrowButton(
                  arrowColor: colorScheme.primary,
                  color: colorScheme.secondary,
                  title: Row(
                    children: [
                      Text(
                        'Interview',
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                      if (i == 0 || i == 2) ...[
                        const SizedBox(width: 5),
                        Icon(
                          Icons.check_circle_rounded,
                          color: Colors.green.shade600,
                        )
                      ]
                    ],
                  ),
                  subtitle: Text(
                    '1 out of 5 s ections studied',
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  trailing: Text(
                    '20%',
                    style: TextStyle(color: colorScheme.primary),
                  ),
                  onTap: () {},
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 25),
              child: CenterTitleButton(
                  color: colorScheme.secondary,
                  titleColor: colorScheme.primary,
                  title: 'Start',
                  onPressed: () {}),
            )
          ]),
    );
  }
}
