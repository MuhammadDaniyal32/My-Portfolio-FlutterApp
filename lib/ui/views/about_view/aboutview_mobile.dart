import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_app/ui/views/about_view/widgets/skills.dart';
import 'package:my_portfolio_app/viewmodels/about_viewmodel/about_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/app_strings.dart';
import '../../common/app_textstyles.dart';
import '../../common/ui_helpers.dart';
import '../../shared_widgets/bullet_text.dart';

class AboutViewMobile extends StackedView<AboutViewModel>{
  const AboutViewMobile({super.key});

  @override
  Widget builder(BuildContext context, AboutViewModel viewModel, Widget? child) {
    AppTextStyles.init(context);
    return Column(
      children: [
        Text(AppStrings.aboutTitle,style: AppTextStyles.mainHeading,),
        verticalSpaceSmall,
        Text(AppStrings.aboutDes,style: AppTextStyles.subHeading,),
        verticalSpaceMedium,
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.primaryDarkColor
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              Image(image: const AssetImage("assets/images/profile-pic.png"),height: screenHeightFraction(context,dividedBy: 3),width: screenWidthFraction(context,dividedBy: 2.5),fit: BoxFit.contain,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpaceLarge,
                    Text('Who am I?',style: AppTextStyles.h2),
                    verticalSpaceSmall,
                    Text(AppStrings.aboutDes2,style: AppTextStyles.subHeading,
                      textAlign: TextAlign.start,
                    ),
                    verticalSpaceMedium,
                    Text('What I do?',style: AppTextStyles.h2!),
                    verticalSpaceSmall,
                    Text("As a Flutter developer, I specialize in:",style: AppTextStyles.subHeading,
                      textAlign: TextAlign.justify,
                    ),
                    verticalSpaceSmall,
                    ...AppStrings.whatido.map((e) => BulletText(text: e)).toList(),
                    verticalSpaceMedium,
                    Text("My Skills",style: AppTextStyles.h2!),
                    verticalSpaceSmall,
                    Text("These are the Tech Stacks that I use :",style: AppTextStyles.subHeading),
                    verticalSpaceSmall,
                    const Skills()
                  ],
                ),
              )
            ],
          ),
        ),
        verticalSpaceLarge,
      ],
    );
  }

  @override
  AboutViewModel viewModelBuilder(BuildContext context) => AboutViewModel();

}