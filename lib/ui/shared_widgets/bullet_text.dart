import 'package:flutter/material.dart';
import 'package:my_portfolio_app/ui/common/app_textstyles.dart';

class BulletText extends StatelessWidget {
  final String text;

  const BulletText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("\u2022 ", style: AppTextStyles.b1!.copyWith(fontSize: 10,color: Colors.white)
          ),
          Expanded(
            child: Text(
              text,
              style: AppTextStyles.b1!.copyWith(fontSize: 10,color: Colors.white,fontFamily: 'Montserrat'),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
