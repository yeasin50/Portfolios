import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Intro(),
        // WorkProcessUsingBlurHash(),

        ///* from assets
        // Tickets(),
        MetroMobileApp(),
      ],
    );
  }
}
