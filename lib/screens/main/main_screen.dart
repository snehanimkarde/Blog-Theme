import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:news/constants.dart';
import 'package:news/controller/MenuController.dart';
import 'package:news/screens/Home/Home_Screen.dart';

import 'componants/heder.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.Scaffoldkey,
      drawer: Drawer(
        child: Container(
          color: kDarkBlackColor,
          child: ListView(
            children: [
              DrawerHeader(
                child: SvgPicture.asset("assets/icons/logo.svg"),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: HomeScreen(),
            )
          ],
        ),
      ),
    );
  }
}
