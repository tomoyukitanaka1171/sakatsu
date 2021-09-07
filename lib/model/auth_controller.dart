import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authControllerProvider = StateNotifierProvider<AuthController, User?>(
  (ref) => AuthController(initialUser: FirebaseAuth.instance.currentUser),
);

class AuthController extends StateNotifier<User?> {
  // ----- Constructor ----- //
  AuthController({User? initialUser}) : super(initialUser) {
    // Userの変更を検知して状態を更新
    _auth.userChanges().listen((user) {
      state = user;
    });
  }

  /// firebase authのインスタンス
  final _auth = FirebaseAuth.instance;
  User? user = FirebaseAuth.instance.currentUser;

  ///登録アカウント情報
  String? email;
  String? password;

  /// サインアップ
  Future<void> signUp() async {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email!, password: password!);

    /// メールアドレス認証
    user = userCredential.user; // 登録したユーザー情報
    user!.sendEmailVerification();

    state = user;
  }

  Future<void> singIn() async {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }

  /// FirebaseAuthの匿名認証でサインインする
  Future<void> signInWithAnonymous() async {
    final userCredential = await _auth.signInAnonymously();
    state = userCredential.user;
  }

  /// アカウントを削除する
  Future<void> deleteAccount() async {
    await state?.delete();
  }

  /// Firebase Auth User の表示名を更新する
  Future<void> updateDisplayName(String newName) async {
    await state?.updateProfile(displayName: newName);
  }
}
