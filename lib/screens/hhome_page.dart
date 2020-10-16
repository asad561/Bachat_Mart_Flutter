import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:practise/utils/cart_icons.dart';
import 'package:practise/screens/dashboard.dart';

class Hhomepages extends StatefulWidget {
  @override
  _HhomepagesState createState() => _HhomepagesState();
}

class _HhomepagesState extends State<Hhomepages> {
  List<Widget> _widgetList = [
    Dashoard(),
    Dashoard(),
    Dashoard(),
    Dashoard()
  ];

  int _index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home
            ),
            title: Text(
              'Store',
              style: TextStyle(),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            title: Text(
              'My Cart',
              style: TextStyle(),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite
            ),
            title: Text(
              'Favourites',
              style: TextStyle(),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            title: Text(
              'My Account',
              style: TextStyle(),
            ),
          ),
        ],
        selectedItemColor: Color.fromRGBO(253, 15, 15, 1),
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.shifting,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
      body: _widgetList[_index],
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      centerTitle: true,
      brightness: Brightness.dark,
      elevation: 0.5,
      backgroundColor: Color.fromRGBO(253, 15, 15, 1),
      automaticallyImplyLeading: false,
      title: Text(
        "Bachat Mart",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        Icon(
          Icons.notifications_none,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
