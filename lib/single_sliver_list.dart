import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final listItem = ScopedProvider<Widget>((_) => throw UnimplementedError());

class SingleSliverList extends HookWidget {
  const SingleSliverList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = useProvider(listItem);
    return SliverList(
      delegate: SliverChildListDelegate([item]),
    );
  }
}
