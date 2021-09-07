import 'package:flutter/material.dart';
import 'package:sakatsu/constrains/constrains.dart';
import 'package:sakatsu/my_flutter_app_icons.dart';

class ArchivePage extends StatelessWidget {
  const ArchivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: defaultLightGrayColor,
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '2021/09/04',
                  style: TextStyle(color: defaultGrayColor),
                ),
                const Text(
                  '整い度76%',
                  style: TextStyle(color: defaultMainColor, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'セット数',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: defaultGrayColor,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Icon(
                            MyFlutterApp.iconMaterialTimeline,
                            size: 13,
                            color: defaultGrayColor,
                          ),
                          const SizedBox(height: 5),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(color: defaultGrayColor, fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(text: '03 ', style: TextStyle(fontSize: 25)),
                                TextSpan(text: '回', style: TextStyle(fontSize: 15)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'サウナ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: defaultGrayColor,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Icon(
                            MyFlutterApp.iconAwesomeHotjar,
                            size: 15,
                            color: defaultGrayColor,
                          ),
                          const SizedBox(height: 5),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(color: defaultGrayColor, fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(text: '03 ', style: TextStyle(fontSize: 25)),
                                TextSpan(text: '回', style: TextStyle(fontSize: 15)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            '水風呂',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: defaultGrayColor,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Icon(
                            MyFlutterApp.iconIonicIosWater,
                            size: 15,
                            color: defaultGrayColor,
                          ),
                          const SizedBox(height: 5),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(color: defaultGrayColor, fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(text: '03 ', style: TextStyle(fontSize: 25)),
                                TextSpan(text: '回', style: TextStyle(fontSize: 15)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            '外気浴',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: defaultGrayColor,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Icon(
                            MyFlutterApp.iconMetroAir,
                            size: 15,
                            color: defaultGrayColor,
                          ),
                          const SizedBox(height: 5),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(color: defaultGrayColor, fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(text: '03 ', style: TextStyle(fontSize: 25)),
                                TextSpan(text: '回', style: TextStyle(fontSize: 15)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
