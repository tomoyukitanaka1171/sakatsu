import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sakatsu/constrains/constrains.dart';
import 'package:sakatsu/model/auth_controller.dart';
import 'package:sakatsu/screen/verify_check_page.dart';
import 'package:sakatsu/widget/alert_dialog.dart';

class RegisterPage extends ConsumerWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final authController = watch(authControllerProvider.notifier);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/step1.png'),
                const SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'メールアドレス',
                      style: TextStyle(color: defaultGrayColor, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                          color: Colors.black12,
                        ))),
                        onChanged: (text) => authController.email = text,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'パスワード　(6~20文字)',
                      style: TextStyle(color: defaultGrayColor, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black12,
                            ),
                          ),
                        ),
                        onChanged: (text) => authController.password = text,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: defaultGreenColor,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: defaultGreenColor,
                        ),
                        onPressed: () async {
                          try {
                            await authController.signUp();
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (_) {
                                  return const WeekPassDialog();
                                },
                              );
                            } else if (e.code == 'email-already-in-use') {
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (_) {
                                  return const AlreadyEmailDialog();
                                },
                              );
                            }
                          }
                          Navigator.push(context, CupertinoPageRoute(builder: (context) {
                            return const VerifyCheckPage();
                          }));
                        },
                        child: const Text(
                          '次へ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
