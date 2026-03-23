import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppNetworkImage extends StatelessWidget {
  AppNetworkImage({super.key, this.imageUrl});

  final String? imageUrl;
  final double radius = 50;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl ?? "",
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) =>
          CircleAvatar(radius: radius, backgroundImage: imageProvider),
      placeholder: (context, url) =>
          Center(child: CupertinoActivityIndicator()),
      errorWidget: (context, url, error) => icon,
    );
  }

  Widget get icon =>
      CircleAvatar(radius: radius, child: Icon(Icons.person_sharp, size: 80));
}
