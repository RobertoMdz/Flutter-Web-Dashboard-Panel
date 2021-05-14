import 'package:flutter/material.dart';

import '../../constants.dart';
import 'widgets/header.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header()
          ]
        ),
      ),
    );
  }
}

