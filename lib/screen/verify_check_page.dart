import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sakatsu/constrains/constrains.dart';
import 'package:sakatsu/model/auth_controller.dart';
import 'package:sakatsu/screen/welcome_page.dart';
import 'package:sakatsu/widget/alert_dialog.dart';

class VerifyCheckPage extends ConsumerWidget {
  const VerifyCheckPage({Key? key}) : super(key: key);

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
                Image.asset('images/step2.png'),
                const SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${authController.email}\nに確認メールを送信しました',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: defaultGrayColor,
                        fontWeight: FontWeight.bold,
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
                          await authController.singIn();
                          if (FirebaseAuth.instance.currentUser!.emailVerified) {
                            print(FirebaseAuth.instance.currentUser!);
                            Navigator.push(context, CupertinoPageRoute(builder: (context) {
                              return const WelcomePage();
                            }));
                          } else {
                            return showDialog(
                                context: context,
                                builder: (_) {
                                  return const WeekPassDialog();
                                });
                          }
                        },
                        child: const Text(
                          'メール確認完了',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            '確認メールを再送信',
                            style: TextStyle(color: defaultMainColor),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
