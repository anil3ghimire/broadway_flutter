import 'package:flutter/material.dart';
import 'package:fluttert/screens/home_screen.dart';
import 'package:fluttert/screens/product_screen.dart';
import 'package:fluttert/screens/profile_screen.dart';
import '../widgets/my_drawer_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List pages = [HomeScreen(), ProductScreen(), ProfileScreen()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MyDrawer(),
      bottomNavigationBar: NavigationBar(
        // onDestinationSelected: (index) {
        //   setState(() {
        //     currentIndex = index;
        //   });
        // },
        selectedIndex: currentIndex,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
            icon: Icon(Icons.propane_outlined),
            label: 'Product',
          ),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
