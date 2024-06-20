import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_app/models/project_model.dart';
import 'package:my_portfolio_app/ui/shared_widgets/project_card.dart';
import 'package:my_portfolio_app/viewmodels/project_viewmodel/project_viewmodel.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_textstyles.dart';
import '../../common/ui_helpers.dart';

class ProjectViewDesktop extends StackedView<ProjectViewModel>{
  const ProjectViewDesktop({super.key});

  @override
  Widget builder(BuildContext context, ProjectViewModel viewModel, Widget? child) {
    AppTextStyles.init(context);
    final currentCount = (screenWidth(context) ~/ 320).toInt();

    final minCount = getValueForScreenType(context: context, mobile: 1,desktop: 2);
    return Column(
      children: [
        Text('Portfolio',style: AppTextStyles.mainHeading,),
        verticalSpaceSmall,
        Text('Here are some of the recent projects I have worked on:',style: AppTextStyles.subHeading,),
        verticalSpaceLarge,
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: currentCount > minCount ? currentCount : minCount,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1.5,
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ProjectCard(project: projectList[index], onTap: () => viewModel.viewProjectDetails(projectList[index]));
          },
          itemCount: projectList.length,
        ),
        verticalSpaceMassive
      ],
    );
  }

  @override
  ProjectViewModel viewModelBuilder(BuildContext context) =>ProjectViewModel();

}