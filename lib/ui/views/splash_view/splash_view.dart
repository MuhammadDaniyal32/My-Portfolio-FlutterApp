import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:my_portfolio_app/ui/common/app_colors.dart';
import 'package:my_portfolio_app/viewmodels/splash_viewmodel/splash_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_textstyles.dart';
import '../../common/ui_helpers.dart';

class SplashView extends StackedView<SplashViewModel>{
  const SplashView({super.key});

  @override
  Widget builder(BuildContext context, SplashViewModel viewModel, Widget? child) {
    AppTextStyles.init(context);
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'My PortFolio',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Loading ...', style: TextStyle(fontSize: 16)),
                horizontalSpaceSmall,
                SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                    strokeWidth: 6,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  SplashViewModel viewModelBuilder(BuildContext context) => SplashViewModel();

  @override
  void onViewModelReady(SplashViewModel viewModel) {
    SchedulerBinding.instance
        .addPostFrameCallback((timeStamp) => viewModel.init());
    super.onViewModelReady(viewModel);
  }

}