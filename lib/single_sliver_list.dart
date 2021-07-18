import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final listItem = Provider<Widget>((_) => throw UnimplementedError());

class SingleSliverList extends ConsumerWidget {
  const SingleSliverList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(listItem);
    return SliverList(
      delegate: SliverChildListDelegate([item]),
    );
  }
}
