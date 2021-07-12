import 'package:flutter/material.dart';

class LoadingSliverList extends StatelessWidget {
  const LoadingSliverList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          const Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
