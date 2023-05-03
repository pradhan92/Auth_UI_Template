import 'package:flutter/material.dart';
import 'package:front_ui/screen/bmi.dart';
import 'package:front_ui/screen/chat.dart';
import 'package:front_ui/screen/detail.dart';
import 'package:front_ui/screen/home_screen.dart';
import 'package:front_ui/screen/menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //drawer: MyDrawer(),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            selectedItemColor: Colors.blue,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.white,
            onTap: (index) {
              //print(index);
              selectedIndex = index;
              setState(() {});
            },
            currentIndex: selectedIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Color(0xff3AD5A6),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.work_outline),
                label: 'BMI',
                backgroundColor: Color(0xff3AD5A6),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.details),
                label: 'Graph',
                backgroundColor: Color(0xff3AD5A6),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chat',
                backgroundColor: Color(0xff3AD5A6),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Menu',
                backgroundColor: Color(0xff3AD5A6),
              ),
            ]),
        body: selectedIndex == 0
            ? HomeScreen()
            : selectedIndex == 1
                ? BmiScreen()
                : selectedIndex == 2
                    ? DetailsScreen()
                    : selectedIndex == 3
                        ? ChatScreen()
                        : MenuScreen(),
      ),
    );
  }
}
