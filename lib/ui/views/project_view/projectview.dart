import 'package:flutter/material.dart';
import 'package:my_portfolio_app/ui/views/project_view/projectview_desktop.dart';
import 'package:my_portfolio_app/ui/views/project_view/projectview_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import '../../../viewmodels/project_viewmodel/project_viewmodel.dart';

class ProjectView extends StackedView<ProjectViewModel>{
  const ProjectView({super.key});

  @override
  Widget builder(BuildContext context, ProjectViewModel viewModel, Widget? child) {
    return ScreenTypeLayout.builder(
      desktop: (_)=>const ProjectViewDesktop(),
      mobile: (_)=>const ProjectViewMobile(),
    );
  }

  @override
  ProjectViewModel viewModelBuilder(BuildContext context) => ProjectViewModel();

}