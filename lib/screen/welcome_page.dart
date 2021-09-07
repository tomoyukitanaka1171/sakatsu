import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sakatsu/constrains/constrains.dart';
import 'package:sakatsu/model/auth_controller.dart';
import 'package:sakatsu/screen/main_page.dart';

class WelcomePage extends ConsumerWidget {
  const WelcomePage({Key? key}) : super(key: key);

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
                Image.asset('images/step3.png'),
                const SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'ようこそ！\nサカツを始めよう！',
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
                          Navigator.push(context, CupertinoPageRoute(builder: (context) {
                            return const MainPage();
                          }));
                        },
                        child: const Text(
                          '始める！',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
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
