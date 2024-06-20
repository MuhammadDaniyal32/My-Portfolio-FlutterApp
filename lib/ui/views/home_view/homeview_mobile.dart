import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:my_portfolio_app/ui/views/home_view/widgets/social_iconsbtn.dart';
import 'package:my_portfolio_app/viewmodels/home_viewmodel/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/app_textstyles.dart';
import '../../common/ui_helpers.dart';
import '../../shared_widgets/rounded_icon_btn.dart';

class HomeViewMobile extends StackedView<HomeViewModel>{
  const HomeViewMobile({super.key});

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    AppTextStyles.init(context);
    return  Column(
      children: [
        verticalSpaceMassive,
        verticalSpaceLarge,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi There, Welcome To My Portfolio! ',
              style: AppTextStyles.h2?.copyWith(
                  fontFamily: 'Montserrat',
                  color: Colors.white
              ),
            ),
            Image.asset(
              'assets/images/hand_weaving.gif',height: 30,width: 30,),
          ],
        ),
        Text(
            'Muhammad',
            style: AppTextStyles.titleHeading1),
        Text(
          'Daniyal',
          style: AppTextStyles.titleHeading2,
        ),
        verticalSpaceMedium,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            horizontalSpaceTiny,
            AnimatedTextKit(
              totalRepeatCount: 1,

              animatedTexts: [
                TypewriterAnimatedText(
                  "I'm Flutter Developer",
                  textStyle: AppTextStyles.h1!,
                  speed: const Duration(milliseconds: 50),
                ),
                ColorizeAnimatedText(
                  "I'm Flutter Developer",
                  textStyle: AppTextStyles.h1!,
                  colors: [
                    AppColors.whiteColor,
                    AppColors.textColor,
                  ],
                ),
              ],
            ),
          ],
        ),
        verticalSpaceMedium,
        Column(
          children: [
            Image.asset(
                'assets/images/ezgif-3-7162fb7e6d.gif',
                width: thirdScreenWidth(context)
            ),
          ],
        ),
        verticalSpaceMedium,
        const SocialIconsBtn(),
        verticalSpaceMedium,
        RoundedIconButton(onbtnclicked: ()=>viewModel.onclicked(), labeltxt: "Resume", btncolor:AppColors.textColor, btnicon: const Icon(FontAwesomeIcons.cloudArrowDown,color: AppColors.whiteColor,),),
        verticalSpaceMassive,

      ],
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

}