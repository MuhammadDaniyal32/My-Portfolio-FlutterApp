import 'package:flutter/material.dart';
import 'package:my_portfolio_app/ui/common/app_colors.dart';
import 'package:my_portfolio_app/ui/common/app_textstyles.dart';
import 'package:my_portfolio_app/ui/common/ui_helpers.dart';

class NavbarButton extends StatelessWidget {
  final String label;
  final int index;
  final Function(int) onItemTapped;

  const NavbarButton({super.key, required this.label, required this.index, required this.onItemTapped});



  @override
  Widget build(BuildContext context) {
    AppTextStyles.init(context);
    return Container(
      margin:  EdgeInsets.all(screenWidth(context)*0.01),
      child: MaterialButton(
        splashColor: AppColors.splashColor,
        highlightColor: AppColors.highlightColor,
        hoverColor: AppColors.hoverColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () => onItemTapped(index),
        child: Padding(
          padding: EdgeInsets.all(screenWidth(context)*0.01),
          child: Text(
            label,
            style: AppTextStyles.h3,
          ),
        ),
      )
    );
  }
}
