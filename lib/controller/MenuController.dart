import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/state_manager.dart';

class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItems =>
      ["Cases", "Services", "About Us", "Careers", "Blog", "Contact"];
  GlobalKey<ScaffoldState> get Scaffoldkey => _scaffoldkey;
  void openOrCloseDrawer() {
    if (_scaffoldkey.currentState.isDrawerOpen) {
      _scaffoldkey.currentState.openEndDrawer();
    } else {
      _scaffoldkey.currentState.openEndDrawer();
    }
  }

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
