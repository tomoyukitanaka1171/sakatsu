import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sakatsu/constrains/constrains.dart';
import 'package:sakatsu/model/auth_controller.dart';
import 'package:sakatsu/my_flutter_app_icons.dart';
import 'package:sakatsu/screen/add_page.dart';
import 'package:sakatsu/screen/archive_page.dart';
import 'package:sakatsu/screen/diary_page.dart';

final selectedIndex = StateProvider((ref) => 0);

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final authController = watch(authControllerProvider.notifier);
    final _selectedIndex = watch(selectedIndex);

    List<Widget> _pageList = [
      const DiaryPage(),
      const ArchivePage(),
      const AddPage(),
      const ArchivePage(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: SizedBox(
            height: 50,
            child: Image.asset("images/logo.png"),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: _pageList[_selectedIndex.state],
      bottomNavigationBar: SizedBox(
        child: Container(
          height: 80,
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.black12, width: 1.0)),
          ),
          child: BottomNavigationBar(
            selectedItemColor: defaultMainColor,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.iconAwesomeBook),
                label: 'サカツ',
              ),
              BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.iconAwesomeHotjar),
                label: '整い',
              ),
              BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.iconAwesomePencilAlt),
                label: '記録する',
              ),
              BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.iconMaterialPerson),
                label: '設定',
              ),
            ],
            currentIndex: _selectedIndex.state,
            onTap: (int index) {
              _selectedIndex.state = index;
            },
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
