import 'package:flutter/material.dart';


import 'listview.dart';

class NestedTabScreen extends StatelessWidget {
  const NestedTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            height: 30,
            width: 200,
            decoration: BoxDecoration(
              
                color: Colors.grey.shade800,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20),bottom:Radius.circular(20) ),
              ),
            child: const TabBar(
               dividerColor: Colors.transparent,
              unselectedLabelColor: Colors.grey,
              
              labelColor: Color.fromARGB(255, 123, 250, 127),
              indicator: BoxDecoration(
                color: Colors.transparent,
              ),
              tabs: [
                Tab(text: 'Pending'),
                Tab(text: 'Approved'),
              ],
            ),
          ),
          const Expanded(
            child: TabBarView(
              children: [
                ListviewWidget(btcolor: Colors.red,btname: 'Pending'),
                ListviewWidget(btcolor: Colors.green,btname: 'Approved'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}