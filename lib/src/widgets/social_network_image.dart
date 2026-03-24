import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialNetworkImage extends StatelessWidget {
  const SocialNetworkImage({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      path,
      fit: BoxFit.cover,
      alignment: Alignment.center,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return const Center(child: CupertinoActivityIndicator());
      },
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error_outline, size: 25);
      },
    );
  }
}
