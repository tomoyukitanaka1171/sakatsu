import 'package:flutter/material.dart';
import 'package:sakatsu/constrains/constrains.dart';
import 'package:sakatsu/domain/diary.dart';

class DiaryPage extends StatelessWidget {
  const DiaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Diary> diary = [
      const Diary(title: "朝カツ", date: 04, week: "日", isToday: false),
      const Diary(title: "パパカツ", date: 05, week: "月", isToday: true),
      const Diary(title: "エビカツ", date: 06, week: "火", isToday: false),
      const Diary(title: "エビカツ", date: 07, week: "水", isToday: false),
      const Diary(title: "エビカツ", date: 08, week: "木", isToday: false),
      const Diary(title: "エビカツ", date: 09, week: "金", isToday: false),
      const Diary(title: "エビカツ", date: 10, week: "土", isToday: false),
    ];

    List<Widget> widgets = diary
        .map((diary) => Column(
              children: [
                diary.isToday
                    ? Container(
                        decoration: const BoxDecoration(color: defaultMainColor, shape: BoxShape.circle),
                        width: 23,
                        height: 23,
                        child: Text(
                          diary.week,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : Text(diary.week),
                const SizedBox(height: 10),
                Text(diary.date.toString().padLeft(2, "0")),
              ],
            ))
        .toList();
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: widgets,
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: defaultLightGrayColor,
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('images/Icon-graph.png'),
                              const SizedBox(width: 10),
                              const Text(
                                '今日のサカツ',
                                style: TextStyle(fontWeight: FontWeight.bold, color: defaultMainColor),
                              ),
                            ],
                          ),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(fontWeight: FontWeight.bold, color: defaultMainColor),
                              children: [
                                TextSpan(text: '整い度'),
                                TextSpan(
                                  text: '76',
                                  style: TextStyle(fontSize: 35),
                                ),
                                TextSpan(text: '%'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20.0),
                              child: Column(
                                children: [
                                  const Text(
                                    'セット数',
                                    style: TextStyle(fontWeight: FontWeight.bold, color: defaultMainColor),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        '03',
                                        style: TextStyle(
                                            fontSize: 40, fontWeight: FontWeight.bold, color: defaultMainColor),
                                      ),
                                      SizedBox(width: 10),
                                      Padding(
                                        padding: EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          '回',
                                          style: TextStyle(fontWeight: FontWeight.bold, color: defaultMainColor),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.black12,
                            height: 120,
                            width: 1,
                          ),
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20.0),
                              child: Column(
                                children: [
                                  const Text(
                                    'サウナ',
                                    style: TextStyle(fontWeight: FontWeight.bold, color: defaultMainColor),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        '10',
                                        style: TextStyle(
                                            fontSize: 40, fontWeight: FontWeight.bold, color: defaultMainColor),
                                      ),
                                      SizedBox(width: 10),
                                      Padding(
                                        padding: EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          '分',
                                          style: TextStyle(fontWeight: FontWeight.bold, color: defaultMainColor),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(thickness: 1, height: 1),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20.0),
                              child: Column(
                                children: [
                                  const Text(
                                    '水風呂',
                                    style: TextStyle(fontWeight: FontWeight.bold, color: defaultMainColor),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        '01',
                                        style: TextStyle(
                                            fontSize: 40, fontWeight: FontWeight.bold, color: defaultMainColor),
                                      ),
                                      SizedBox(width: 10),
                                      Padding(
                                        padding: EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          '分',
                                          style: TextStyle(fontWeight: FontWeight.bold, color: defaultMainColor),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.black12,
                            height: 120,
                            width: 1,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20.0),
                              child: Column(
                                children: [
                                  const Text(
                                    '外気浴',
                                    style: TextStyle(fontWeight: FontWeight.bold, color: defaultMainColor),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        '03',
                                        style: TextStyle(
                                            fontSize: 40, fontWeight: FontWeight.bold, color: defaultMainColor),
                                      ),
                                      SizedBox(width: 10),
                                      Padding(
                                        padding: EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          '分',
                                          style: TextStyle(fontWeight: FontWeight.bold, color: defaultMainColor),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'メモ',
                    style: TextStyle(fontSize: 16, color: defaultMainColor, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '今日は１セット目にかなり整いを感じた。２セット目以降はあまり整いを感じられなかった、原因はサウナの時間が短かったから？さらなる整いに改善が必要。',
                    style: TextStyle(
                      height: 2,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
