import 'package:flutter/material.dart';

class TabSamplePage extends StatefulWidget {
  const TabSamplePage({super.key});

  @override
  State<TabSamplePage> createState() => _TabSamplePageState();
}

class _TabSamplePageState extends State<TabSamplePage> {
  final tabs = [
    "tab1",
    "tab2",
    "tab3",
    "tab4",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              for (var tab in tabs)
                Tab(
                  text: tab,
                )
            ],
          ),
        ),
        body: const Center(child: Text('sample')),
      ),
    );
  }
}
