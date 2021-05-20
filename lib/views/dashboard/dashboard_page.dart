import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard_panel/responsive.dart';
import 'package:flutter_web_dashboard_panel/views/dashboard/widgets/recent_files.dart';

import '../../constants.dart';
import 'widgets/header.dart';
import 'widgets/my_files.dart';
import 'widgets/storage_details.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                      if(Responsive.isMobile(context))
                        const SizedBox(height: defaultPadding),
                      if(Responsive.isMobile(context))
                        StarageDetails(),
                    ],
                  ),
                ),
                if(!Responsive.isMobile(context))
                  const SizedBox(width: defaultPadding),
                if(!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StarageDetails(),
                  ),
              ]
            )
          ]
        ),
      ),
    );
  }
}


