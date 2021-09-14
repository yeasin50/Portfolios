import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';
import 'package:portfolio/configs/configs.dart';
import 'lisa.work.body.dart';

///`HomePage`
class LisaFischerWorkMain extends StatelessWidget {
  static const String routename = "LisaWork_Main";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          desktop: WorkDesktopTablet(),
          tablet: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: WorkDesktopTablet(),
          ),
          mobile: LFWorkBody(
            griditemC: 1,
          ),
        ),
      ),
    );
  }
}

class WorkDesktopTablet extends StatelessWidget {
  const WorkDesktopTablet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          Align(
            alignment: Alignment(0, 0),
            child: MaxWidthContainer(
              child: LFWorkBody(
                griditemC: Responsive.isDesktop(context) ? 3 : 2,
              ),
            ),
          ),
          Align(
            alignment: kTopBodyStackChildAlignment,
            child: Container(
              width: kTabletMaxWidth,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedLogo(
                    animType: AnimationType.rotate,
                  ),
                  LSHeader().navigators(context),
                ],
              ),
            ),
          ),
          if (Responsive.isDesktop(context))
            Align(
              alignment: Alignment(0, 1),
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FooterText(),
                    SocialIcons(),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
