import 'package:flutter/material.dart';
import 'package:my_portfolio_app/ui/views/home_view/homeview_desktop.dart';
import 'package:my_portfolio_app/ui/views/home_view/homeview_mobile.dart';
import 'package:my_portfolio_app/viewmodels/home_viewmodel/home_viewmodel.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StackedView<HomeViewModel>{
  const HomeView({super.key});


  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return  ScreenTypeLayout.builder(
      desktop:(_)=>const HomeViewDesktop(),
      mobile: (_) => const HomeViewMobile(),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

}