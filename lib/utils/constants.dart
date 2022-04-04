import 'package:flutter/material.dart';

class Constants {
  Constants._();
  static const bottomNavBarElements = <Map<String, dynamic>>[
    {
      "icon": Icons.menu_book_outlined,
      "label": "Study",
      "routeName": '/study',
    },
    {
      "icon": Icons.check_circle_outline_rounded,
      "label": "Practice",
      "routeName": '/practice',
    },
    {
      "icon": Icons.alarm_on_rounded,
      "label": "Mock Test",
      "routeName": '/mock_test',
    },
    {
      "icon": Icons.more_outlined,
      "label": "Extra",
      "routeName": '/extra',
    },
    {
      "icon": Icons.settings_outlined,
      "label": "Settings",
      "routeName": '/settings',
    },
  ];

  // static const homeInnerPageElements = <Map<String, String>>[
  //   {
  //     "appBarTitle": "Test Center",
  //     "percent": Constants.loremText,
  //     "outerButtonTitle": "Find a driving test centre",
  //     "routeName": '/test_center',
  //   },
  //   {
  //     "appBarTitle": "About Theory",
  //     "bodyText": Constants.loremText,
  //     "outerButtonTitle": "More about the theory test",
  //     "routeName": '/about_theory',
  //   },
  //   {
  //     "appBarTitle": "Highway Code",
  //     "bodyText": Constants.loremText,
  //     "outerButtonTitle": "The Official Highway Code",
  //     "routeName": '/highway_code',
  //   },
  // ];

  static const extraInnerPageElements = <Map<String, String>>[
    {
      "appBarTitle": "Test Center",
      "bodyText": Constants.loremText,
      "outerButtonTitle": "Find a driving test centre",
      "routeName": '/test_center',
    },
    {
      "appBarTitle": "About Theory",
      "bodyText": Constants.loremText,
      "outerButtonTitle": "More about the theory test",
      "routeName": '/about_theory',
    },
    {
      "appBarTitle": "Highway Code",
      "bodyText": Constants.loremText,
      "outerButtonTitle": "The Official Highway Code",
      "routeName": '/highway_code',
    },
    {
      "appBarTitle": "Useful Links",
      "bodyText": Constants.loremText,
      "outerButtonTitle": "Useful links",
      "routeName": '/useful_links',
    },
    {
      "appBarTitle": "DVSA Products",
      "bodyText": Constants.loremText,
      "outerButtonTitle": "More DVSA products",
      "routeName": '/dvsa_products',
    },
    {
      "appBarTitle": "Use This App",
      "bodyText": Constants.loremText,
      "outerButtonTitle": "How to use this app",
      "routeName": '/use_this_app',
    },
    {
      "appBarTitle": "Share this app",
      "bodyText": Constants.loremText,
      "outerButtonTitle": "Share this app",
      "routeName": '/share_this_app',
    },
    {
      "appBarTitle": "Tell Us",
      "bodyText": Constants.loremText,
      "outerButtonTitle": "Tell us what you think",
      "routeName": '/tell_us',
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
