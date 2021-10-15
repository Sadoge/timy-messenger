import "package:flutter/material.dart";
import "package:photo_view/photo_view.dart";

class ImagePinchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String url = ModalRoute.of(context).settings.arguments;
    return SafeArea(
      child: GestureDetector(
        child: PhotoView(
          imageProvider: NetworkImage(url),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
