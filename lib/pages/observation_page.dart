import 'package:flutter/material.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class ObservationPage extends StatelessWidget {
  const ObservationPage({Key? key}) : super(key: key);
  static const routeName = '/study/observation';

  @override
  Widget build(BuildContext context) {
    return InnerPageWidget(
      appBarTitle: 'Observation',
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            SelectableText(
              'Completed',
              // textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    // fontWeight: FontWeight.normal,
                    color: Colors.green.shade700,
                  ),
            ),
            const SizedBox(height: 15),
            SelectableText(
              """
We only ask for personal information 
when we truly need it to provide a 
service to you. We collect it by fair and 
lawful means, with your knowledge and 
consent. We also let you know why 
we're collecting it and how it will be 
used.
We only retain collected information for 
as long as necessary to provide you 
with your requested service. What data 
we store, we'll protect within 
commercially acceptable means to 
prevent loss and theft, as well as 
unauthorized access, disclosure, 
copying, use or modification.""",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w300,
                    color: Colors.grey.shade600,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
