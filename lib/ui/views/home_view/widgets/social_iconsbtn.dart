import 'package:flutter/material.dart';
import 'package:my_portfolio_app/app/app.locator.dart';
import 'package:my_portfolio_app/extensions/hover_extensions.dart';
import 'package:my_portfolio_app/ui/common/app_colors.dart';
import 'package:my_portfolio_app/ui/common/app_constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../services/network/url_launcher_service.dart';

class SocialIconsBtn extends StatelessWidget {
  const SocialIconsBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final urllauncherservice = locator<UrlLauncherService>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...AppConstants.socialIcons.map((e) =>
            IconButton(icon:e,
            hoverColor: AppColors.hoverColor,
              splashColor: AppColors.splashColor,
              highlightColor: AppColors.highlightColor,
              iconSize: getValueForScreenType(context: context, desktop: 28,tablet: 24, mobile: 22),
              isSelected: true,
            padding: const EdgeInsets.all(15),
            onPressed: (){
              urllauncherservice.launchInBrowser(AppConstants.socialLinks[AppConstants.socialIcons.indexOf(e)]);
            },
            ).scaleOnHover()
        )
      ],
    );
  }
}
