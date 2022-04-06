import 'package:flutter/material.dart';
import 'package:theory_test/widgets/divide_arrow_button.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class SelectTopic extends StatelessWidget {
  const SelectTopic({Key? key}) : super(key: key);
  static const routeName = '/study/select_topic';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InnerPageWidget(
      appBarTitle: 'Select topic',
      child: Center(
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 10, bottom: 30),
          itemCount: 9,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              child: DivideArrowButton(
                arrowColor: colorScheme.primary,
                color: colorScheme.secondary,
                title: Text(
                  'Interview',
                  style: TextStyle(color: Colors.grey.shade800),
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
            );
          },
        ),
      ),
    );
  }
}
