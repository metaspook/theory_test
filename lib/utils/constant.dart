import 'package:theory_test/pages/about_theory.dart';
import 'package:theory_test/pages/dvsa_products.dart';
import 'package:theory_test/pages/highway_code.dart';
import 'package:theory_test/pages/share_this_app.dart';
import 'package:theory_test/pages/tell_us.dart';
import 'package:theory_test/pages/test_center.dart';
import 'package:theory_test/pages/use_this_app.dart';
import 'package:theory_test/pages/useful_links.dart';

class Constant {
  static const cardButtonElements = <Map<String, dynamic>>[
    {
      "title": "Find a driving test centre",
      "page": TestCenter(),
    },
    {
      "title": "More about the theory test",
      "page": AboutTheory(),
    },
    {
      "title": "The Official Highway Code",
      "page": HighwayCode(),
    },
    {
      "title": "Useful links",
      "page": UsefulLinks(),
    },
    {
      "title": "More DVSA products",
      "page": DvsaProducts(),
    },
    {
      "title": "How to use this app",
      "page": UseThisApp(),
    },
    {
      "title": "Share this app",
      "page": ShareThisApp(),
    },
    {
      "title": "Tell us what you think",
      "page": TellUs(),
    },
  ];

  static const String loremText = """
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
nunc.

Non dignissim vestibulum a gravida. In 
rhoncus malesuada leo ante eget velit 
nisl aliquet sed. Magna sagittis lectus 
posuere et sit. Quis ornare at massa 
pulvinar mattis. Purus cras convallis et, 
semper etiam porttitor. Dolor, faucibus 
interdum volutpat, congue. Dictumst 
eget sed nullam egestas mattis. A 
lectus velit dictumst cras. Vestibulum 
viverra odio velit diam mi. Mauris ut 
scelerisque lobortis vitae viverra libero. 
Mauris odio fames ut auctor 
malesuada.""";
}
