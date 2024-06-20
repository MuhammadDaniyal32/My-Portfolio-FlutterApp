import 'package:flutter/material.dart';
import 'package:my_portfolio_app/ui/common/app_colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AppTextStyles {
  static TextStyle? btn;

  // Headings
  static TextStyle? h1;
  static TextStyle? h1b;
  static TextStyle? h2;
  static TextStyle? h2b;
  static TextStyle? h3;
  static TextStyle? h3b;
  static TextStyle? titleHeading1;
  static TextStyle? titleHeading2;

  static TextStyle? mainHeading;
  static TextStyle? subHeading;

  // Body
  static TextStyle? b1;
  static TextStyle? b1b;
  static TextStyle? b2;
  static TextStyle? b2b;

  // Label
  static TextStyle? l1;
  static TextStyle? l1b;
  static TextStyle? l2;
  static TextStyle? l2b;

  static init(BuildContext context) {
    const b = FontWeight.bold;
    const baseStyle = TextStyle( fontFamily: 'Poppins',color: AppColors.textColor);

    h1 = baseStyle.copyWith(fontSize: getValueForScreenType(context: context, desktop: 22, tablet: 20, mobile: 18));
    h1b = h1!.copyWith(fontWeight: b);

    h2 = baseStyle.copyWith(fontSize: getValueForScreenType(context: context,desktop: 18, tablet: 16, mobile: 13));
    h2b = h2!.copyWith(fontWeight: b);

    h3 = baseStyle.copyWith(fontSize: getValueForScreenType(context: context, desktop: 16, tablet: 13, mobile: 12));
    h3b = h3!.copyWith(fontWeight: b);

    titleHeading1 = baseStyle.copyWith(
      fontSize: getValueForScreenType(context: context, desktop: 80, tablet: 50, mobile: 40),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w100,
    );
    titleHeading2 = baseStyle.copyWith(
      fontSize: getValueForScreenType(context: context, desktop: 80, tablet: 50, mobile: 40),
      fontWeight: FontWeight.bold,
      height: 1
    );
    mainHeading = h1?.copyWith(fontFamily: 'Montserrat',fontSize: getValueForScreenType(context: context,desktop: 35, tablet: 30, mobile: 25));
    subHeading = l1?.copyWith(fontFamily: 'Montserrat',color: Colors.white,fontSize: getValueForScreenType(context: context,desktop: 14, tablet: 12, mobile: 10));

    b1 = baseStyle.copyWith(fontSize: getValueForScreenType(context: context, desktop: 10, tablet: 8, mobile: 6));
    b1b = b1!.copyWith(fontWeight: b);

    b2 = baseStyle.copyWith(fontSize: getValueForScreenType(context: context, desktop: 8, tablet: 6, mobile: 5));
    b2b = b2!.copyWith(fontWeight: b);

    l1 = baseStyle.copyWith(fontSize: getValueForScreenType(context: context, desktop: 6, tablet: 5, mobile: 4));
    l1b = l1!.copyWith(fontWeight: b);

    l2 = baseStyle.copyWith(fontSize: getValueForScreenType(context: context, desktop: 5, tablet: 4, mobile: 3));
    l2b = l2!.copyWith(fontWeight: b);


  }

}