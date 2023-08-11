import 'package:flutter/material.dart';
import 'package:hype_app/widgets/app_bar_widget.dart';
import 'package:hype_app/widgets/social_cotinar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppBarWidget(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Total Earnings (INR)",
                                style: TextStyle(color: Colors.white)),
                            Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Text(
                                  "Withdraw",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("₹50,480",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.school,
                          color: Colors.white, size: 30)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.webhook,
                          color: Colors.white, size: 30)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.money_off_outlined,
                          color: Colors.white, size: 30)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_bag,
                          color: Colors.white, size: 30)),
                ],
              ),
              LayoutBuilder(builder: (context, constraints) {
                // ignore: unused_local_variable
                final buttonWidth = constraints.maxWidth / 4;

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text("Hype Academy",
                            style: TextStyle(color: Colors.white))),
                    TextButton(
                        onPressed: () {},
                        child:
                            const Text("Web", style: TextStyle(color: Colors.white))),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Refer & Earn",
                            style: TextStyle(color: Colors.white))),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Hype Shop",
                            style: TextStyle(color: Colors.white))),
                  ],
                );
              }),
              const SizedBox(height: 10),
              const SocialContinerWidget(),
              // Wrap the ListView.builder with a Container or SizedBox to avoid rendering issues
            ],
          ),
        ),
      ),
    );
  }
}
