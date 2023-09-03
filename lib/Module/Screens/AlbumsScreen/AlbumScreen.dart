import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Widgets/AppBar.dart';
import 'AlbumsScreenController.dart';

final AlbumScreenController controller = Get.find();

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: photosList(controller),
    );
  }
}

Widget photosList(controller) {
  return Obx(() => controller.isLoading.value
      ? const Center(child: CircularProgressIndicator())
      : Column(
          children: [
            Expanded(
              child:
               ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  color: Colors.white,
                ),
                itemCount: controller.photosList.length,
                itemBuilder: (BuildContext context, int index) {
                  return PhotoCard(
                    imagePath: "${controller.photosList[index].url}",
                  );
                },
              ),
            ),
          ],
        ));
}

class PhotoCard extends StatelessWidget {
  final String imagePath;

  const PhotoCard({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            imageUrl: imagePath,
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.cover,
            height: 150,
          ),
        ),
        );
  }
}
