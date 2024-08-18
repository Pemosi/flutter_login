import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("ログイン成功！下のアイコンを押すとログアウトできます。"),
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () async {
                // ログアウト処理
                await FirebaseAuth.instance.signOut();
                // ログイン画面に遷移＋チャット画面を破棄
                // ignore: use_build_context_synchronously
                Navigator.pop(context);
              },
            ),
          ],
        )
      ),
    );
  }
}