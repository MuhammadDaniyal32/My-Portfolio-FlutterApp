import 'package:flutter/material.dart';
import 'package:my_portfolio_app/ui/views/contact_view/contactview_desktop.dart';
import 'package:my_portfolio_app/ui/views/contact_view/contactview_mobile.dart';
import 'package:my_portfolio_app/viewmodels/contact_viewmodel/contact_viewmodel.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class ContactView extends StackedView<ContactViewModel>{
  const ContactView({super.key});

  @override
  Widget builder(BuildContext context, ContactViewModel viewModel, Widget? child) {
    return ScreenTypeLayout.builder(
      desktop: (_)=>const ContactViewDesktop(),
      mobile: (_)=>const ContactViewMobile(),
      tablet: (_)=>const ContactViewMobile(),
    );
  }

  @override
  ContactViewModel viewModelBuilder(BuildContext context) => ContactViewModel();

}