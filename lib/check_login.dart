import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'data/provider/login_user_provider.dart';
import 'first_view.dart';
import 'view/login/login_view.dart';

class CheckLogin extends ConsumerWidget {
  const CheckLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(loginUserProvider);
    return user.when(
      data: (user) {
        if (user == null) {
          return const LoginView();
        } else {
          return const FirstView();
        }
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (err, stack) => Text('Error:$err'),
    );
  }
}
