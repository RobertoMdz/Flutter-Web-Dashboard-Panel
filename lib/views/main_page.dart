import 'package:flutter/material.dart';

import 'dashboard/dashboard_page.dart';
import 'widgets/side_drawer_menu.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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