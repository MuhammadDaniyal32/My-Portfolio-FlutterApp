import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio_app/extensions/hover_extensions.dart';
import 'package:my_portfolio_app/ui/common/app_colors.dart';
import 'package:my_portfolio_app/ui/common/app_constants.dart';

import '../../../common/ui_helpers.dart';
import '../../../shared_widgets/navbar_button.dart';

class NavbarDesktop extends StatelessWidget {
  final Function(int) onItemTapped;
  const NavbarDesktop({super.key, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(screenWidth(context)*0.01),
      child: Row(
        children: [

          const Image(image: AssetImage('assets/images/logo.png'),width: 200,),
          const Spacer(),
          ...AppConstants.navBarNames.asMap().entries.map(
            (e) => NavbarButton(label: e.value, index: e.key, onItemTapped:onItemTapped).scaleOnHover(),
          ),
          //horizontalSpaceSmall,

        ],
      ),
    ).animate().fade(begin: 0.0, end: 1.0, curve: Curves.easeInCubic, duration: const Duration(milliseconds: 500));
  }
}

class NavbarMobile extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const NavbarMobile({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            highlightColor: AppColors.highlightColor,
            hoverColor: AppColors.hoverColor,
            splashColor: AppColors.splashColor,
            splashRadius: 10,
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(image: AssetImage('assets/images/logo.png'),width: 160,),
          ),
          horizontalSpaceSmall
        ],
      ),
    ).animate().fadeIn(begin: 0.0, curve: Curves.easeInCubic, duration: const Duration(milliseconds: 500));
  }
}
