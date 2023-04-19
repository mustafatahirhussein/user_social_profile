import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformIconCustomWidget extends StatelessWidget {
  const PlatformIconCustomWidget({
    Key? key,
    required this.path,
  }) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: path,
      fit: BoxFit.cover,
      alignment: Alignment.center,
      placeholder: (ctx, _) => Center(
        child: CupertinoActivityIndicator(),
      ),
      errorWidget: (ctx, _, child) => Icon(Icons.error, size: 25),
    );
  }
}
