import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/dashboardController.dart';

class Dashboard extends StatelessWidget {
  final String title;
  //final DashboardController controller = Get.put(DashboardController());

  Dashboard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return myDashboardHeader(title, true, 40);
        },
        body: myDashboardBody(context),
      ),
      floatingActionButton: myDashBoardFloatButton(),
      bottomNavigationBar: myDashboardNavigatonBar(),
    );
  }
}
