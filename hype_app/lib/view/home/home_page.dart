import 'package:flutter/material.dart';
import 'package:hype_app/widgets/app_bar_widget.dart';

import '../../widgets/profile_bottom_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
                        AppBarWidget() 
            ],
          ),
        ),
      ),
    );
  }
}