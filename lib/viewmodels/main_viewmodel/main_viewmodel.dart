
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';

class MainViewModel extends BaseViewModel{
  final ItemScrollController itemScrollController = ItemScrollController();

  final routerService = locator<RouterService>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;



  void onItemTapped(int index){
    itemScrollController.scrollTo(index: index, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    if(_scaffoldKey.currentState!.isDrawerOpen){
      _scaffoldKey.currentState!.openEndDrawer();
    }
  }

  init(){

  }



}