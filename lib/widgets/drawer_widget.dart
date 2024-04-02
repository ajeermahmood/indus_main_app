import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({
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
    var height = MediaQuery.of(context).size.height;
    return Drawer(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: height / 5,
            child: Image.asset(
              'assets/images/indus-logo-extended.png',
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => SizedBox(
                height: 55,
                child: InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(
                      navItems[index]['icon'],
                      size: 27,
                    ),
                    title: Text(
                      navItems[index]['title'],
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
