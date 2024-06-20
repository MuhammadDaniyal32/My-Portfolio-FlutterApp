import 'package:flutter/material.dart';
import 'package:my_portfolio_app/extensions/hover_extensions.dart';
import 'package:my_portfolio_app/models/project_model.dart';
import 'package:my_portfolio_app/ui/common/app_colors.dart';
import 'package:my_portfolio_app/ui/common/app_textstyles.dart';
import 'package:my_portfolio_app/ui/common/ui_helpers.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectCard extends StatefulWidget {
  final ProjectModel project;
  final VoidCallback onTap;
  const ProjectCard({
    Key? key,
    required this.project, required this.onTap,
  }) : super(key: key);
  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => widget.onTap(),
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
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.primaryDarkColor,
          borderRadius: BorderRadius.circular(10),
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
        child: Stack(
          fit: StackFit.expand,
          children: [
            isHover?
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    Image.asset(
                  widget.project.projectIcon,
                  height: screenHeight(context) * 0.05,
                ),
                    verticalSpaceSmall,
                    Text(
                      widget.project.projectTitle,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getValueForScreenType(context: context, desktop: 15,tablet: 14, mobile: 13),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
               verticalSpaceSmall,

                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.project.shortDescription,
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style:TextStyle(
                          color: Colors.white,
                          fontSize: getValueForScreenType(context: context, desktop: 12,tablet: 11, mobile: 10),
                                      
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),

                SizedBox(height:screenWidth(context)*0.01),
                Text("View Project Details",style: AppTextStyles.l1b!.copyWith(fontSize: getValueForScreenType(context: context, desktop: 10,tablet: 9, mobile: 8))),

                  ],
                )
            :const SizedBox(),

            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHover ? 0.0 : 1.0,
              child: FittedBox(
                fit: BoxFit.fill,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    widget.project.bannerList[0],
                  ),
                )
              ),
            ),
          ],
        ),
      ).scaleOnHover(),
    );
  }
}