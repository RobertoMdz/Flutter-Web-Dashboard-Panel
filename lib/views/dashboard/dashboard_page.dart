import 'package:flutter/material.dart';

import '../../constants.dart';
import 'widgets/header.dart';
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
                  child: Container(
                    color: Colors.white,
                    height: 500,
                  )
                ),
                const SizedBox(width: defaultPadding),
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

