import 'package:flutter/material.dart';
import 'package:theory_test/widgets/center_title_button.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class ObservationPage2 extends StatelessWidget {
  const ObservationPage2({Key? key}) : super(key: key);
  static const routeName = '/study/observation2';

  @override
  Widget build(BuildContext context) {
    return InnerPageWidget(
      appBarTitle: 'Observation',
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            SelectableText(
              """
Lorem ipsum dolor sit amet, consectetur 
adipiscing elit. In viverra venenatis quam 
est, nisi. Eget diam sagittis malesuada 
eget scelerisque. Feugiat pellentesque 
egestas et lacus quisque condimentum 
adipiscing. Sapien, viverra sagittis, 
volutpat adipiscing suscipit orci, facilisis. 
Sed sem sodales sem sollicitudin turpis. 
Mi congue amet lacus sed a, quis ut 
consequat dui. Nunc nibh aliquet tempus 
sit. Elit blandit eu netus viverra nunc 
aliquam in neque convallis. Vivamus 
tellus, scelerisque dictumst areet vel. 
Pellentesque volutpat magna lorem orci 
ut nec. Sed commodo.
Mi congue amet lacus sed a, quis ut 
consequat dui. Nunc nibh aliquet tempus 
sit. Elit blandit eu netus viverra nunc 
aliquam in neque convallis. Vivamus 
tellus, scelerisque dictumst areet vel. 
Pellentesque volutpat magna lorem orci 
ut nec. Sed commodo.""",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w300,
                    color: Colors.grey.shade600,
                  ),
            ),
            const SizedBox(height: 30),
            CenterTitleButton(
                title: "          I've agree with this          ",
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
