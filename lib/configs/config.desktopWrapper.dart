import 'package:flutter/material.dart';
import 'package:portfolio/screens/Work/widgets/work_grid_items.dart';

import 'configs.dart';
import '../widgets/widgets.dart';

class DesktopViewWrapper extends StatelessWidget {
  final Widget child;
  const DesktopViewWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) => Stack(
            children: [
              //* body
              Align(
                alignment: Alignment(0, 0),
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: MaxWidthContainer(
                          child: Padding(
                        padding: const EdgeInsets.only(
                          top: 150,
                          bottom: 80,
                        ),
                        child: Column(
                          children: [
                            child,
                            
                            WorkPageGridItems(
                              key: UniqueKey(),
                              gridItemCount: 3,
                              gridItemWidth:
                                  constraints.maxWidth / 3, //for image format
                            ),
                          ],
                        ),
                      )),
                    ),
                  ],
                ),
              ),

              //* Footer
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
              ),
              //* Header
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: kTabletMaxWidth,
                  padding: EdgeInsets.only(top: 40, left: 16, right: 16),
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
            ],
          ),
        ),
      ),
    );
  }
}
