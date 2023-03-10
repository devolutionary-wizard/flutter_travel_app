import 'package:flutter/material.dart';
import 'package:travel_app/screen/widget/bottom_navigation_bar/floating_navbar.dart';
import 'package:travel_app/screen/widget/bottom_navigation_bar/floating_navbar_item.dart';
import 'package:travel_app/screen/widget/category_screen.dart';
import 'package:travel_app/screen/widget/travel_group.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: _appBar,
        body: _buildBody,
        bottomNavigationBar: _bottomNavigationBar);
  }

  Widget get _buildBody {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            CategoryWidget(),
             SizedBox(
              height: 15,
            ),
            TravelGroup()
          ],
        ),
      ),
    );
  }

  Widget get _bottomNavigationBar => FloatingNavbar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        selectedBackgroundColor: Colors.transparent,
        onTap: (int val) => setState(() => _index = val),
        currentIndex: _index,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
          FloatingNavbarItem(icon: Icons.save_outlined, title: 'Saved'),
          FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
        ],
      );

  final AppBar _appBar = AppBar(
    backgroundColor: Colors.grey[100],
    centerTitle: false,
    title: Row(
      children: [
        CircleAvatar(
          child: ClipOval(
            child: Image.network(
              'https://wallpapers-clan.com/wp-content/uploads/2022/02/naruto-pfp-19.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome Back!',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey),
            ),
            Text(
              'Naruto Uzumaki',
              style: TextStyle(fontSize: 16, color: Colors.black),
            )
          ],
        ),
      ],
    ),
    actions: const [
      CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.search,
          color: Colors.black,
        ),
      ),
      SizedBox(
        width: 5,
      ),
      CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.notifications_outlined,
          color: Colors.black,
        ),
      ),
      SizedBox(
        width: 15,
      )
    ],
  );
}
