import 'package:flutter/material.dart';

import '../../../configs/config.constants.dart';
import '../../../configs/configs.dart';
import '../../../constants/const.textStyles.dart';

Text header(String title) {
  return Text(
    title,
    style: AppTextStyles.subHeader.copyWith(
      fontSize: 21,
      height: kNormalTextHeight,
    ),
  );
}

// Text normalText(String text) {
//   return Text(
//     text,
//     softWrap: true,
//     style: TextStyle(
//       fontFamily: kFproximaNova,
//       height: kNormalTextHeight,
//     ),
//   );
// }