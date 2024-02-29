import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sign_up/constants/constants.dart';
import 'package:sign_up/constants/styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: AppColors.whiteColor,
        leadingWidth: 80,
        leading: SizedBox(
            width: 100,
            height: 100,
            child: Builder(builder: (BuildContext context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: SvgPicture.asset(menuIcon));
            })),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: const CircleAvatar(
              radius: 22,
            ),
          )
        ],
      ),
      drawer: SizedBox(
        width: AppStyles.getButtonWidth(context)/1.35,
        child: const Drawer(
          child: Column(
            children: [ListTile()],
          ),
        ),
      ),
      body: const Column(),
      // bottomNavigationBar: BottomNavigationBar(items: []),
    );
  }
}
