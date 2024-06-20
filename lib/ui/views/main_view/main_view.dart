import 'package:flutter/material.dart';

import 'package:my_portfolio_app/ui/common/app_colors.dart';
import 'package:my_portfolio_app/ui/common/app_constants.dart';
import 'package:my_portfolio_app/ui/common/app_textstyles.dart';

import 'package:my_portfolio_app/ui/views/main_view/widgets/drawer_mobile.dart';
import 'package:my_portfolio_app/ui/views/main_view/widgets/navbar.dart';

import 'package:responsive_builder/responsive_builder.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stacked/stacked.dart';


import '../../../viewmodels/main_viewmodel/main_viewmodel.dart';


class MainView extends StackedView<MainViewModel>{
  const MainView({super.key});


  @override
  Widget builder(BuildContext context, MainViewModel viewModel, Widget? child) {
    AppTextStyles.init(context);
    return Scaffold(
      key: viewModel.scaffoldKey,
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.backgroundColor,
      drawer: ScreenTypeLayout.builder(
        mobile:(_)=>DrawerMobile(onItemTapped: (p0) => viewModel.onItemTapped(p0)),
        desktop: (_) {
          WidgetsBinding.instance
              .addPostFrameCallback((_) =>  viewModel.scaffoldKey.currentState!.closeDrawer());
          return Container();
        },
      ),
      body: SafeArea(
          child:Stack(
            children: [
              RawScrollbar(
                thumbVisibility: true,
                thumbColor: AppColors.primaryColor,
                thickness: 8.0,
                radius: const Radius.circular(50),
                padding: const EdgeInsets.only(right: 5, left: 5),
                controller: viewModel.itemScrollController.scrollController,
                child: ScrollablePositionedList.builder(
                  itemCount: AppConstants.views.length,
                  itemBuilder: (context, index) => AppConstants.views[index],
                  itemScrollController: viewModel.itemScrollController,
                ),
              ),
              //nav bar
              ScreenTypeLayout.builder(
                mobile:(_)=>  NavbarMobile(scaffoldKey: viewModel.scaffoldKey),
                desktop: (_)=> NavbarDesktop(onItemTapped: (p0) => viewModel.onItemTapped(p0)),
              ),
            ],
          )
      ),
    );

  }


  @override
  MainViewModel viewModelBuilder(BuildContext context) => MainViewModel();

  @override
  void onViewModelReady(MainViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }



}

