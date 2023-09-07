import 'package:get/get.dart';
import 'package:photos_app/Module/Screens/AlbumsScreen/PhotosScreen/PhotosScreenController.dart';
import 'package:photos_app/Module/Screens/PostScreen/PostScreenController.dart';
import '../../Module/Screens/AlbumsScreen/AlbumsScreenController.dart';
import '../../Module/Screens/MainScreen/MainScreenController.dart';


class Binding implements Bindings{

  @override
  void dependencies() {

    Get.put(MainScreenController());
    Get.lazyPut(() => PhotosScreenController());
    Get.lazyPut(() => PostScreenController());
    Get.lazyPut(() => AlbumScreenController());
  }}