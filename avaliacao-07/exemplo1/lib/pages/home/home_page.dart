import 'package:flutter/material.dart';

import 'package:exemplo1/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:exemplo1/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:exemplo1/pages/home/widgets/sections/advantages_section.dart';
import 'package:exemplo1/pages/home/widgets/sections/courses_section.dart';
import 'package:exemplo1/pages/home/widgets/sections/top_section.dart';
import '../../breakpoints.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraints.maxWidth < mobileBreakpoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 72),
                  child: WebAppBar()),
          drawer: constraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: [
                  TopSection(),
                  AdvantagesSection(),
                  CoursesSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
