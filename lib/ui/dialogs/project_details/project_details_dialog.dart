import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:my_portfolio_app/ui/common/app_textstyles.dart';
import 'package:my_portfolio_app/ui/dialogs/project_details/project_details_dialog_model.dart';
import 'package:my_portfolio_app/ui/shared_widgets/rounded_icon_btn.dart';
import 'package:my_portfolio_app/ui/shared_widgets/skill_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';

class ProjectDetailsDialog extends StackedView<ProjectDetailsDialogModel>{
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const ProjectDetailsDialog({super.key, required this.request, required this.completer});
  @override
  Widget builder(BuildContext context, ProjectDetailsDialogModel viewModel, Widget? child) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: screenWidthFraction(context, dividedBy: getValueForScreenType(context: context, mobile: 1, desktop: 2.3, tablet: 1.5)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primaryDarkColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withAlpha(100),
              blurRadius: 12.0,
              offset: const Offset(0.0, 0.0),
            )
          ]
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //project image
              Stack(
                children: [
            SizedBox(
                    height: screenHeightFraction(context, dividedBy: getValueForScreenType(context: context, mobile: 4, desktop: 2.5)),
                    width:screenWidthFraction(context, dividedBy: getValueForScreenType(context: context, mobile: 1, desktop: 2.3, tablet: 1.5)) ,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: CarouselSlider.builder(
                          itemCount: viewModel.selectedProject.bannerList.length,
                          itemBuilder:(context, index, realIndex) {
                            return InkWell(
                              onTap: () {},
                              child: FullScreenWidget(
                                disposeLevel: DisposeLevel.Medium,backgroundIsTransparent: true,
                                child: Image.asset(
                                  viewModel.selectedProject.bannerList[index],
                                  fit: BoxFit.fill,
                                  width: screenWidthFraction(context, dividedBy: getValueForScreenType(context: context, mobile: 1, desktop: 2.3, tablet: 1.5)),
                                ),
                              ),
                            );
                          },

                        options: CarouselOptions(
                          enlargeStrategy: CenterPageEnlargeStrategy.scale,
                          padEnds:true,
                          viewportFraction: 1,
                          initialPage: 0,
                          enableInfiniteScroll: false,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 5),
                          autoPlayAnimationDuration: const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                        ),)
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.blackColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.close,
                          color: Colors.black,
                          size: getValueForScreenType(context: context, mobile:15,tablet: 20,desktop: 22),),
                        onPressed: () => completer(DialogResponse(confirmed: false)),
                      ),
                    ),
                  ),
                  // tecnologies used icons
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Row(
                      children: viewModel.selectedProject.techStackIconList.map((tech) => SizedBox(
                        height: getValueForScreenType(context: context, mobile: 60,tablet: 70,desktop: 80),
                        width: getValueForScreenType(context: context, mobile: 60,tablet: 70,desktop: 80),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: SkillWidget(
                            skill_img: tech,
                            color: AppColors.blackColor.withOpacity(0.5),
                          )
                        ),
                      )).toList(),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        verticalSpaceSmall,
                        Text(
                          viewModel.selectedProject.projectTitle,
                          style: AppTextStyles.mainHeading!.copyWith(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        verticalSpaceTiny,
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            viewModel.selectedProject.projectDescription,
                            style: AppTextStyles.subHeading!.copyWith(color: AppColors.whiteColor),
                            softWrap: true,
                            textAlign: getValueForScreenType(context: context, mobile: TextAlign.start, desktop: TextAlign.justify),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              verticalSpaceMedium,
              // project links
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 10,
                runSpacing: 10,
                children: [
                  viewModel.selectedProject.projectGithubLink != "" ?
                  RoundedIconButton(onbtnclicked:()=> viewModel.openurl(viewModel.selectedProject.projectGithubLink), labeltxt: "See On Github", btncolor: AppColors.primaryColor, btnicon: const Icon(FontAwesomeIcons.github,color: Colors.black,))
                      : Container(),
                  viewModel.selectedProject.projectLiveLink != "" ?
                  RoundedIconButton(onbtnclicked:()=>viewModel.openurl(viewModel.selectedProject.projectLiveLink), labeltxt: "Live Demo", btncolor: AppColors.primaryColor, btnicon: const Icon(FontAwesomeIcons.arrowUpRightFromSquare))
                      : Container(),
                ],
              ),
              verticalSpaceMedium,

            ],
          ),
        ),
      ),

    );
  }

  @override
  ProjectDetailsDialogModel viewModelBuilder(BuildContext context) =>ProjectDetailsDialogModel();

}