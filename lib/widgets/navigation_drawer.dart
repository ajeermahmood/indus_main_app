import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class NavigationDrawerWidget extends StatelessWidget {
  NavigationDrawerWidget({
    super.key,
  });

  final List<Map<String, dynamic>> navItems = [
    {
      "title": 'Home',
      "icon": LineIcons.home,
    },
    {
      "title": 'Proprties Rent',
      "icon": LineIcons.building,
    },
    {
      "title": 'Proprties Sale',
      "icon": LineIcons.building,
    },
    {
      "title": 'Wishlist',
      "icon": LineIcons.heart,
    },
    {
      "title": 'Agents',
      "icon": LineIcons.users,
    },
    {
      "title": 'Communities',
      "icon": LineIcons.globe,
    },
    {
      "title": 'Blogs & Trends',
      "icon": LineIcons.newspaper,
    },
    {
      "title": 'Gallary',
      "icon": LineIcons.image,
    },
    {
      "title": 'DLD Transactions',
      "icon": LineIcons.barChart,
    },
    {
      "title": 'Mortgage Calculator',
      "icon": LineIcons.calculator,
    },
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return NavigationDrawer(children: [
      SizedBox(
        width: 100,
        height: 80,
        child: Image.asset(
          'assets/images/indus-logo-extended.png',
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) => SizedBox(
            height: 45,
            child: ListTile(
              leading: Icon(
                navItems[index]['icon'],
                size: 20,
              ),
              title: Text(
                navItems[index]['title'],
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
