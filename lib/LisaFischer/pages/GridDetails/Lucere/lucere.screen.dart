import 'package:flutter/material.dart';
import 'package:portfolio/configs/configs.dart';
import 'package:portfolio/widgets/widgets.dart';

import 'Lucere.dart';

class Lucere extends StatelessWidget {
  static final String routeName = "/work/oro";
  const Lucere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          mobile: MobieViewWrapper(
            child: MobileView(),
          ),
          tablet: TabletViewWrapper(
            child: TabletView(),
          ),
          desktop: DesktopViewWrapper(
            child: DesktopView(),
          ),
        ),
      ),
    );
  }
}
