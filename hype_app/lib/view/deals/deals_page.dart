import 'package:flutter/material.dart';
import '../../widgets/listview.dart';
import '../../widgets/nested_tabbar.dart';

class DealsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 123, 250, 127),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('image/facebookicon.png'),
                          radius: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                        width: 50,
                        child: Image(image: AssetImage('image/facebookicon.png')),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade900,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 25,
                          ),
                          color: const Color.fromARGB(255, 123, 250, 127),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade900,
                  ),
                  child:const  DefaultTabController(
                    length: 3, // Number of tabs
                    child: Column(
                      children: [
                        TabBar(
                          unselectedLabelColor: Colors.grey,
                          labelColor: Color.fromARGB(255, 123, 250, 127),
                          indicator: BoxDecoration(
                            color: Colors.transparent,
                            // Remove underline color
                          ),
                          tabs: [
                            Tab(text: 'Deals'),
                            Tab(text: 'Upcoming'),
                            Tab(text: 'Completed'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              ListviewWidget(
                                btcolor: Colors.green,
                                btname: 'Register',
                              ),
                              NestedTabScreen(),
                              ListviewWidget(
                                btcolor: Colors.green,
                                btname: 'Approved',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
