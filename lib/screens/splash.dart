import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  String appName = 'CHIARADIA.COM.BR';
  int splashTime = 5;
  SplashPage() {
    startTimeout();
  }
  startTimeout() async {
    return Timer(Duration(seconds: splashTime), changeScreen);
  }

  changeScreen() async {
    Get.toNamed('/dashboard');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
      bottomNavigationBar: footer(),
    );
  }

  Center _buildBody() {
    final titulo = Text(
      appName,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
    return Center(
        child: ListView(
      shrinkWrap: true,
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      children: <Widget>[
        titulo,
      ],
    ));
  }

  Container footer() {
    final titulo = Text(
      'Powered By:',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
    );
    final subTitulo = Text(
      '@chiaradia.com.br',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
    return Container(
        child: ListView(
      shrinkWrap: true,
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      children: <Widget>[
        titulo,
        SizedBox(height: 12),
        subTitulo,
        SizedBox(height: 24)
      ],
    ));
  }
}
