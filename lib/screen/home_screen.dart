import 'package:flutter/material.dart';
import 'package:travel_app/screen/widget/category_screen.dart';
import 'package:travel_app/screen/widget/travel_group.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
       );
  }

  Widget get _buildBody {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: const SingleChildScrollView(
        child: Column(
          children: [
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
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
