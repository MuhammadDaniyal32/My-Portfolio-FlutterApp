import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../common/app_colors.dart';
import '../common/app_textstyles.dart';
import '../common/ui_helpers.dart';

class ContactCard extends StatefulWidget {
  final IconData icon;
  final IconData hoverIcon;
  final String title;
  final String subTitle;
  const ContactCard({super.key, required this.icon, required this.title, required this.subTitle, required this.hoverIcon});

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        width:screenWidthFraction(context,dividedBy: getValueForScreenType(context: context, mobile: 1, desktop: 4, tablet: 2)),
        height: screenHeightFraction(context,dividedBy: 3),
        /*width: 350,
        height: 250,*/
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.primaryDarkColor,
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: AppColors.primaryColor.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ],
        ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Icon(isHover?widget.hoverIcon:widget.icon,size: 50,color: AppColors.textColor,),
            isHover? Icon(widget.hoverIcon,size: 50,color: AppColors.textColor)
                :Icon(widget.icon,size: 50,color: AppColors.textColor,),
            verticalSpaceSmall,
            Text(widget.title,style: AppTextStyles.h2b!.copyWith(color: AppColors.textColor)),
            verticalSpaceSmall,
        SelectableText(
          widget.subTitle,
          style: AppTextStyles.subHeading!.copyWith(fontWeight: FontWeight.bold),
        )
          ]
      ),
      ),
    );
  }
}
