import 'package:flutter/material.dart';
import 'package:hotline_cafe/Pages/Home/Chats.dart';
import 'package:hotline_cafe/Pages/Home/Discovery.dart';
import 'package:hotline_cafe/Pages/Home/Home.dart';
import 'package:hotline_cafe/Pages/Home/Play.dart';
import 'package:hotline_cafe/Pages/Home/Profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  final pages = [
    Home(),
    Discovery(),
    Play(),
    Chats(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF040415),
      body: SafeArea(child: pages[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: const Color(0xFF040415),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(
            icon: Image.asset("assets/icons/Union.png",scale: 4,color: (currentIndex == 0)?Color(0xffe66944):null,), label: "Home"),
        BottomNavigationBarItem(
            icon: Image.asset("assets/icons/Discovery.png",scale: 4,color: (currentIndex == 1)?Color(0xffe66944):null,), label: "Discovery"),
        BottomNavigationBarItem(
            icon: Image.asset("assets/icons/Play.png",scale: 4,color: (currentIndex == 2)?Color(0xffe66944):null,), label: "Play"),
        BottomNavigationBarItem(
            icon: Image.asset("assets/icons/chat.png",scale: 4,color: (currentIndex == 3)?Color(0xffe66944):null,), label: "Chats"),
        BottomNavigationBarItem(
            icon: Image.asset("assets/icons/profile.png",scale: 4,color: (currentIndex == 4)?Color(0xffe66944):null,), label: "Profile"),
      ]),
    );
  }
}
