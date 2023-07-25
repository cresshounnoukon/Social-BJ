import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/components/feed_component.dart';
import 'package:flutterwithfirebase/components/profile_circle_item_component.dart';
import 'package:flutterwithfirebase/screens/feed_form_screen.dart';
import 'package:flutterwithfirebase/screens/home/home_screen.dart';
import 'package:flutterwithfirebase/screens/chat/chat_screen.dart';
import 'package:flutterwithfirebase/screens/profil/profile_screen.dart';
import 'package:flutterwithfirebase/screens/search/search_screeen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> screens = [
    HomeScreen(),
    ChatListScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];
  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: screens,
        index: currentScreen,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentScreen,


        animationDuration: Duration(milliseconds: 500),
        //backgroundColor: Theme.of(context).primaryColor,
        onDestinationSelected: (value) => setState(() => currentScreen = value),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home"),
          NavigationDestination(
            selectedIcon: Icon(Icons.message) ,
              icon: Icon(Icons.message_outlined), label: "Message"),
          NavigationDestination(icon: Icon(Icons.search), label: "Recherche"),
          NavigationDestination(
              icon: Icon(Icons.person_2_outlined), label: "Profil"),
        ],
      ),
    );
  }
}
