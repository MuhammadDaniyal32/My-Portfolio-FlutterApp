import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_portfolio_app/viewmodels/project_viewmodel/project_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../../models/project_model.dart';
import '../../common/app_textstyles.dart';
import '../../common/ui_helpers.dart';
import '../../shared_widgets/project_card.dart';

class ProjectViewMobile extends StackedView<ProjectViewModel> {
  const ProjectViewMobile({super.key});

  @override
  Widget builder(
      BuildContext context, ProjectViewModel viewModel, Widget? child) {
    AppTextStyles.init(context);
    return Column(
      children: [
        Text(
          'Portfolio',
          style: AppTextStyles.mainHeading,
        ),
        verticalSpaceSmall,
        Text(
          'Here are some of the recent projects I have worked on:',
          style: AppTextStyles.subHeading,
        ),
        verticalSpaceLarge,
        CarouselSlider.builder(
          itemCount: projectList.length,
          itemBuilder: (context, index, realIndex) => ProjectCard(
              project: projectList[index],
              onTap: () => viewModel.viewProjectDetails(projectList[index])),
          options: CarouselOptions(
            initialPage: 0,
            enableInfiniteScroll: false,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
        ),
        verticalSpaceLarge
      ],
    );
  }

  @override
  ProjectViewModel viewModelBuilder(BuildContext context) => ProjectViewModel();
}
