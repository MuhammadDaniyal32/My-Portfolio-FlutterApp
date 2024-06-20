import 'package:flutter/material.dart';
import 'package:my_portfolio_app/ui/common/app_colors.dart';
import 'package:my_portfolio_app/ui/common/app_constants.dart';


class DrawerMobile extends StatelessWidget {
  final Function(int) onItemTapped;

  const DrawerMobile({super.key, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primaryDarkColor,
      child: Drawer(
        backgroundColor:AppColors.primaryDarkColor,
        child:Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            children: [
              const Center(
                child: Image(image: AssetImage('assets/images/logo.png'),width: 200,),
              ),
              const Divider(color: AppColors.primaryLightColor,),
              ...AppConstants.navBarNames.asMap().entries.map(
                (e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    color: AppColors.primaryDarkColor,
                    hoverColor: AppColors.hoverColor,
                    splashColor: AppColors.splashColor,
                    highlightColor: AppColors.highlightColor,
                    onPressed: () {
                      onItemTapped(e.key);
                      //Navigator.pop(context);
                    },
                    child: ListTile(
                      leading:Icon(
                        AppConstants.navBarIcons[e.key],
                        color:AppColors.textColor,

                      ),
                      contentPadding: const EdgeInsets.all(5),
                      title: Text(
                        e.value,
                        style:const TextStyle(
                          fontSize: 10,
                          color: AppColors.textColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
