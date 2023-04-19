import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheImageNetworkCustom extends StatelessWidget {
  const CacheImageNetworkCustom({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => CircleAvatar(
        radius: 100,
        backgroundImage: imageProvider,
      ),
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => icon,
    );
  }

  Widget get icon => CircleAvatar(
        backgroundColor: Colors.black,
        radius: 101,
        child: Align(
          alignment: Alignment.center,
          child: Icon(Icons.person),
        ),
      );
}
