import 'package:flutter/material.dart';
import 'package:my_portfolio_app/ui/common/app_constants.dart';
import 'package:my_portfolio_app/ui/shared_widgets/contact_card.dart';
import 'package:my_portfolio_app/viewmodels/contact_viewmodel/contact_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_textstyles.dart';
import '../../common/ui_helpers.dart';

class ContactViewDesktop extends StackedView<ContactViewModel> {
  const ContactViewDesktop({super.key});

  @override
  Widget builder(
      BuildContext context, ContactViewModel viewModel, Widget? child) {
    AppTextStyles.init(context);
    return Column(
      children: [
        Text(
          'Get In Touch',
          style: AppTextStyles.mainHeading,
        ),
        verticalSpaceSmall,
        SizedBox(
          width: screenWidthFraction(context,dividedBy: 2),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'I am always open to new opportunities and collaborations. If you have any questions about my work or just want to chat about Flutter development, feel free to get in touch.',
              style: AppTextStyles.subHeading,
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ),
        ),
        verticalSpaceMassive,
        verticalSpaceLarge,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: AppConstants.contactList.map((e) => ContactCard(icon: e['icon'],hoverIcon: e['hoverIcon'], title: e['title'], subTitle: e['subTitle'])).toList(),
        ),

        verticalSpaceMassive,
        //verticalSpaceMassive,
      ],
    );
  }

  @override
  ContactViewModel viewModelBuilder(BuildContext context) => ContactViewModel();
}
