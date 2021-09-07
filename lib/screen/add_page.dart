import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sakatsu/constrains/constrains.dart';
import 'package:sakatsu/viewmodel/add_page_model.dart';

class AddPage extends ConsumerWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _sliderProvider = watch(sliderProvider);
    final _sliderNotifier = watch(sliderProvider.notifier);
    final _sliderValue = _sliderProvider.round();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  children: const [
                    SizedBox(
                      width: 22,
                    ),
                    Text(
                      'セット数',
                      style: TextStyle(color: defaultGrayColor, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: const [
                    SizedBox(
                      width: 22,
                    ),
                    Text(
                      'サウナの時間',
                      style: TextStyle(color: defaultGrayColor, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: const [
                    SizedBox(
                      width: 22,
                    ),
                    Text(
                      '水風呂の時間',
                      style: TextStyle(color: defaultGrayColor, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: const [
                    SizedBox(
                      width: 22,
                    ),
                    Text(
                      '外気浴の時間',
                      style: TextStyle(color: defaultGrayColor, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '整い度',
                        style: TextStyle(color: defaultGrayColor, fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '$_sliderValue %',
                        style: const TextStyle(color: defaultGrayColor, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Slider(
                  activeColor: defaultMainColor,
                  value: _sliderProvider,
                  min: 0,
                  max: 100,
                  onChanged: (double value) {
                    _sliderNotifier.changeState(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'メモ',
                    style: TextStyle(color: defaultGrayColor, fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextField(onChanged: (text) {}),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      child: const Text(
                        '追加する',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: defaultMainColor,
                      ),
                      onPressed: () {
                        //todo
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
