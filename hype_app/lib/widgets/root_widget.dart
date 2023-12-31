import 'package:flutter/material.dart';
import 'package:hype_app/view/deals/deals_page.dart';
import 'package:hype_app/view/home/home_page.dart';

 class Rootpage extends StatefulWidget {
  const Rootpage({super.key});



  @override
  State<Rootpage> createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {

   int _currentIndex = 0;

  final List<Widget> _pages = [
  const  HomePage(),
    DealsPage(),
   Container(),
   Container(),
   Container(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        fixedColor: Colors.white,
       
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items:const  [
          BottomNavigationBarItem(
            backgroundColor: Colors.black12,
            icon: Icon(Icons.home,size: 30,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handshake_outlined,size: 30,),
            label: 'Deals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add,size: 30,),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,size: 30,),
            label: 'message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,size: 30,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}