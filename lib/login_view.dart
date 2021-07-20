import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'data/repository/auth_repository.dart';

class LoginView extends ConsumerWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailInputController = TextEditingController();
    final passwordInputController = TextEditingController();

    return Scaffold(
      body: Center(
        child: Form(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 24.0),
                TextFormField(
                  controller: emailInputController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(height: 24.0),
                TextFormField(
                  controller: passwordInputController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 24.0),
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          child: const Text('ログイン'),
                          onPressed: () async {
                            var email = emailInputController.text;
                            var password = passwordInputController.text;
                            await ref
                                .read(authRepositoryProvider)
                                .signInAnonymously();
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () async {
                            await ref
                                .read(authRepositoryProvider)
                                .signInAnonymously();
                          },
                          child: const Text("ログインせずに利用"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
