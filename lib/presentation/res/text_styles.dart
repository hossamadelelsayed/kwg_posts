import 'package:kwg/presentation/res/colors.dart';

import 'package:flutter/material.dart';

class TextStyles {
  static const regular = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.darkText,
    fontFamily: "IBMPlexSansArabicRegular",
  );

  static const medium = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.darkText,
    fontFamily: "IBMPlexSansArabicMedium",
  );

  static const semiBold = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.darkText,
    fontFamily: "IBMPlexSansArabicSemiBold",
  );

  static const light = TextStyle(
    color: AppColors.darkText,
    fontFamily: "IBMPlexSansArabicLight",
    height: 1.57,
  );

  static const bold = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.darkText,
    fontFamily: "IBMPlexSansArabicBold",
  );
}
