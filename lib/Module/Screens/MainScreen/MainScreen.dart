import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'MainScreenController.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MainScreenController controller = Get.find();
    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.currentIndex.value,
            children: controller.pages,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.pink,
          selectedLabelStyle: TextStyle(color: Colors.pink),
          onTap: controller.changePage,
          currentIndex: controller.currentIndex.value,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          selectedIconTheme: IconThemeData(color: Colors.pinkAccent),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          items: [

            _bottomNavigationBarItem(
              icon: Icon(
                Icons.textsms_outlined,
              ),
              label: "Posts",
            ),   _bottomNavigationBarItem(
              icon: Icon(
                Icons.image_outlined,
              ),
              label: "Albums",
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem({
    required Icon icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label,
    );
  }
}
