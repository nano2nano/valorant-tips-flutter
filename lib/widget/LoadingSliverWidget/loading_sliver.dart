import 'package:flutter/material.dart';

class LoadingSliver extends StatelessWidget {
  const LoadingSliver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
