import 'package:flutter/material.dart';
import 'package:portfolio/configs/config.constants.dart';
import 'package:portfolio/configs/config.textStyles.dart';

class SubtitleCategoryOfWork extends StatelessWidget {
  final List<String> rolls;
  const SubtitleCategoryOfWork({
    Key? key,
    required this.rolls,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TextSpan> spans = [];

    for (int i = 0; i < rolls.length; i++)
      i == rolls.length - 1
          ? spans.add(
              TextSpan(
                text: rolls[i],
                style: MyTextStyles().subtitle12,
              ),
            )
          : spans.add(
              TextSpan(
                children: [
                  TextSpan(
                    text: rolls[i],
                    style: MyTextStyles().subtitle12,
                  ),
                  TextSpan(
                      text: ' / ',
                      style: subTitleTextStyle.copyWith(
                        color: kColorDash,
                      ))
                ],
              ),
            );

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: spans,
      ),
    );
  }
}