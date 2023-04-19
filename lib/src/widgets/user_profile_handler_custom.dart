import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfileHandlerCustom extends StatelessWidget {
  const UserProfileHandlerCustom({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) => CircleAvatar(
        radius: 100,
        backgroundImage: imageProvider,
      ),
      placeholder: (context, url) => Center(
        child: CupertinoActivityIndicator(),
      ),
      errorWidget: (context, url, error) => icon,
    );
  }

  Widget get icon => CircleAvatar(
        radius: 80,
        child: Icon(Icons.person_sharp, size: 80),
      );
}
