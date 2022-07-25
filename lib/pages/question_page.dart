import 'package:flutter/material.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({Key? key}) : super(key: key);
  static const routeName = '/practice/question';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InnerPageWidget(
      appBarTitle: 'Question 1/10',
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            SelectableText(
              """
Lorem ipsum dolor sit amet, 
consectetur adipiscing elit. Malesuada 
at ac odio leo. Nunc ut ut et tristique 
vivamus bibendum vitae. Lobortis 
nullam lectus nisi, lectus purus vel. Sit 
accumsan mi ut amet. Molestie 
vestibulum magna auctor lacinia 
aenean vel nunc, bibendum lacus. 
Ullamcorper ullamcorper sed praesent 
phasellus amet ac et, laoreet curabitur. 
Volutpat vestibulum suspendisse 
semper consectetur pharetra, mattis 
nunc.""",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w300,
                    color: Colors.grey.shade600,
                  ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                elevation: 5,
                shadowColor: Colors.white.withOpacity(0.85),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Icon(Icons.arrow_back_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
