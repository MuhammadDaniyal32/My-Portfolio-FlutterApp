import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_app/ui/common/app_strings.dart';
import 'package:my_portfolio_app/viewmodels/contact_viewmodel/contact_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_constants.dart';
import '../../common/app_textstyles.dart';
import '../../common/ui_helpers.dart';
import '../../shared_widgets/contact_card.dart';

class ContactViewMobile extends StackedView<ContactViewModel>{
  const ContactViewMobile({super.key});

  @override
  Widget builder(BuildContext context, ContactViewModel viewModel, Widget? child) {
    AppTextStyles.init(context);
    return Column(
      children: [
        Text(
          AppStrings.contactTitle,
          style: AppTextStyles.mainHeading,
        ),
        verticalSpaceSmall,
        SizedBox(
          width: screenWidthFraction(context,dividedBy: 1),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
             AppStrings.contactDes,
              style: AppTextStyles.subHeading,
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ),
        ),
        //verticalSpaceMassive,
        verticalSpaceLarge,
        CarouselSlider.builder(
          itemCount: AppConstants.contactList.length,
          itemBuilder: (context, index, realIndex) {
            return ContactCard(icon: AppConstants.contactList[index]['icon'],hoverIcon: AppConstants.contactList[index]['hoverIcon'], title: AppConstants.contactList[index]['title'], subTitle: AppConstants.contactList[index]['subTitle']);
          },
          options: CarouselOptions(
            height: screenHeightFraction(context,dividedBy: 3),
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
        verticalSpaceMassive,
        //verticalSpaceMassive,
      ],
    );
  }


  @override
  ContactViewModel viewModelBuilder(BuildContext context) =>ContactViewModel() ;

}