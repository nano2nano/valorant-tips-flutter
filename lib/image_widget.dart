import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final imageName = Provider<String>((ref) => throw UnimplementedError());

class ImageWidget extends ConsumerWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(imageName);
    const apiUrl = 'https://valorant-tips.herokuapp.com/api/v1/img';
    return CachedNetworkImage(
      imageUrl: '$apiUrl/$name',
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          CircularProgressIndicator(value: downloadProgress.progress),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
