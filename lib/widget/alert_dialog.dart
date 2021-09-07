import 'package:flutter/material.dart';

class WeekPassDialog extends StatelessWidget {
  const WeekPassDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("会員登録できません"),
      content: const Text("パスワードは６文字以上にしてください"),
      actions: [
        TextButton(
          child: const Text("Cancel"),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: const Text("OK"),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}

class AlreadyEmailDialog extends StatelessWidget {
  const AlreadyEmailDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("会員登録できません"),
      content: const Text("メールアドレスがすでに使われています。"),
      actions: [
        TextButton(
          child: const Text("Cancel"),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: const Text("OK"),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
