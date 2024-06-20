import 'package:flutter/material.dart';
import 'package:my_portfolio_app/extensions/hover_extensions.dart';
import 'package:my_portfolio_app/ui/common/app_textstyles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RoundedIconButton extends StatelessWidget {
  final VoidCallback? onbtnclicked;
  final String labeltxt;
  final FocusNode? focusNode;
  final Color btncolor, bordercolor, txtcolor;
  final Widget btnicon;

  const RoundedIconButton({super.key,
    required this.onbtnclicked,
    required this.labeltxt,
    this.focusNode = null,
    required this.btncolor,
    this.bordercolor = Colors.transparent,
    this.txtcolor = Colors.white,
    required this.btnicon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: getValueForScreenType(context: context, mobile: 140, desktop: 200,tablet: 170),
      child: ElevatedButton.icon(
          focusNode: focusNode,
          onPressed: () => onbtnclicked!(),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              side: BorderSide(color: bordercolor, width: 2.0),
              borderRadius: BorderRadius.circular(100),
            )),
            backgroundColor:
                MaterialStateColor.resolveWith((states) => btncolor),
          ),
          icon: btnicon,
          label: Text(
            labeltxt,
            style: AppTextStyles.subHeading,
            textAlign: TextAlign.center,
          )),
    ).scaleOnHover();
  }
}
