import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:photos_app/Module/Screens/PostScreen/PostScreen.dart';

import '../AlbumsScreen/AlbumsScreen.dart';

class MainScreenController extends GetxController {
  RxInt currentIndex = 0.obs;

  List<Widget> pages = [
    PostScreen(),
    AlbumScreen(),
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }
}
