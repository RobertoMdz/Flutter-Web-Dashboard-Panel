import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/menu_controller.dart';
import '../responsive.dart';
import 'dashboard/dashboard_page.dart';
import 'widgets/side_drawer_menu.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideDrawerMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context))
              Expanded(
                child: SideDrawerMenu()
              ),
            Expanded(
              flex: 5,
              child: DashboardPage()
            )
          ]
        )
      ),
    );
  }
}