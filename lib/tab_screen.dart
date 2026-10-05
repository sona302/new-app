import 'package:facebook/tab_page1.dart';
import 'package:facebook/tab_page2.dart';
import 'package:facebook/tab_page3.dart';
import 'package:facebook/tab_page4.dart';
import 'package:flutter/material.dart';
class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabs Screen'),
          ),
          body: TabBarView(children: [
            Column(
              children: [
                TabBar(tabs: [
                  Tab(text: 'shikarq',),
                  Tab(text: 'bardum',),
                  Tab(text: 'matum',),
                  Tab(text: 'asmani shiqam',),
                ]),
                Expanded(
                    child:
                    TabBarView(children: [
                      TabPage1(),
                      TabPage2(),
                      TabPage3(),
                      TabPage4(),
                    ])

                )

              ],
            )
          ]),

        )
    );
  }
}
