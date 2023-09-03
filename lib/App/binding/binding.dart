import 'package:get/get.dart';
import 'package:photos_app/Module/Screens/AlbumsScreen/AlbumsScreenController.dart';


class Binding implements Bindings{

  @override
  void dependencies() {
    Get.put(AlbumScreenController());

  }}