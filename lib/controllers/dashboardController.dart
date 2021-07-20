import 'package:get/get.dart';
import 'package:getx/config/appConfig.dart';
import 'package:flutter/material.dart';

class DashboardController extends GetxController {
  final count = 0.obs;
  increment() => count.value++;
}

final DashboardController controller = Get.put(DashboardController());

myDashboardHeader(
    String title, bool innerBoxIsScrolled, double expandedHeight) {
  return <Widget>[
    SliverAppBar(
      expandedHeight: expandedHeight,
      floating: true,
      forceElevated: innerBoxIsScrolled,
      pinned: true,
      titleSpacing: 0,
      backgroundColor: colors['appBarBackGround'],
      actionsIconTheme: IconThemeData(opacity: 0.0),
      title: myTitle(title),
      //flexibleSpace: myDashboardFlexibleSpaceBar(),
    ),
  ];
}

Row myTitle(titulo) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Center(
            child: Text(titulo,
                maxLines: 1,
                style: TextStyle(fontSize: 22, color: colors['appBarText']))),
      ),
    ],
  );
}

SingleChildScrollView myDashboardBody(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 48.0),
        Text(
          'Você clicou no botão',
        ),
        Obx(
          () => Text(
            '${controller.count.value}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        TextButton(
            onPressed: () {
              //Get.off(AboutPage());
            },
            child: Text(
              'About GetX',
            )),
        TextButton(
            onPressed: () {
              Get.snackbar('Titulo Snackbar',
                  'Você clicou ${controller.count.value} vezes',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: colors['snackBarBackGround'],
                  colorText: colors['snackBarText']);
            },
            child: Text(
              'Show Snackbar',
              style: TextStyle(color: colors['buttonDefault']),
            )),
        TextButton(
            onPressed: () {
              Get.defaultDialog(
                  title: 'Titulo do DIalog',
                  middleText: 'Você clicou ${controller.count.value} vezes',
                  confirmTextColor: colors['buttonConfirmText'],
                  cancelTextColor: colors['buttonCancelText'],
                  buttonColor: colors['buttonDefault'],
                  textConfirm: 'Confirmar',
                  textCancel: 'Cancelar');
            },
            child: Text(
              'Show AlertDialog',
              style: TextStyle(color: colors['buttonDefault']),
            ))
      ],
    ),
  );
}

FloatingActionButton myDashBoardFloatButton() {
  return FloatingActionButton(
    onPressed: controller.increment,
    tooltip: 'Increment',
    child: Icon(Icons.add),
    backgroundColor: colors['buttonAdd'],
  );
}

BottomNavigationBar myDashboardNavigatonBar() {
  return BottomNavigationBar(
    currentIndex: 0,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Minha conta"),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket), label: "Meus pedidos"),
      BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favoritos"),
    ],
  );
}
