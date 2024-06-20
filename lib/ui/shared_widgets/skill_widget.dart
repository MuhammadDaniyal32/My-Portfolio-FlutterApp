import 'package:flutter/material.dart';
import 'package:my_portfolio_app/extensions/hover_extensions.dart';

import '../common/app_colors.dart';

class SkillWidget extends StatelessWidget {
  final String skill_img;
  final Color color;
  const SkillWidget({Key? key, required this.skill_img, this.color=AppColors.primaryColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(skill_img,/*height: 50,width: 50,*/),
    ).scaleOnHover();
  }
}
