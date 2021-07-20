import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/config/appConfig.dart';
import 'package:getx/screens/dashboard.dart';
import 'package:getx/screens/splash.dart';

void main() => runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      defaultTransition: Transition.native,
      locale: Locale('pt', 'BR'),
      theme: configTheme(),
      getPages: [
        GetPage(
          name: '/',
          page: () => SplashPage(),
        ),
        GetPage(
          name: '/dashboard',
          page: () => Dashboard(
            title: 'titulo da pagina',
          ),
        )
      ],
    ));
