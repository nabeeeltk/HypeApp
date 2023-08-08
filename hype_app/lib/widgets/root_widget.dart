import 'package:flutter/material.dart';
import 'package:hype_app/view/deals/deals_page.dart';

 class Rootpage extends StatefulWidget {
  const Rootpage({super.key});



  @override
  State<Rootpage> createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {

   int _currentIndex = 0;

  final List<Widget> _pages = [
   Container(),
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
        currentIndex: _currentIndex,
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
            icon: Icon(Icons.message,size: 30,),
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