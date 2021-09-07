import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sakatsu/constrains/constrains.dart';
import 'package:sakatsu/model/auth_controller.dart';
import 'package:sakatsu/screen/main_page.dart';
import 'package:sakatsu/screen/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: defaultMainColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: defaultMainColor),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
                Image.asset('images/logo.png'),
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
                      'パスワード',
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
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: defaultMainColor,
                        ),
                        onPressed: () {
                          //todo
                        },
                        child: const Text(
                          'ログイン',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
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
                            return const RegisterPage();
                          }));
                        },
                        child: const Text(
                          '会員登録へ進む',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        child: const Text('パスワードを忘れた方はこちら'),
                        onPressed: () {
                          Navigator.push(context, CupertinoPageRoute(builder: (context) {
                            return const MainPage();
                          }));
                        },
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
