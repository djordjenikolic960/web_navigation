import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_navigation/web_navigation_container/cubit/navigation_cubit.dart';
import 'package:web_navigation/web_navigation_container/cubit/navigation_state.dart';

class NavigationPanel extends StatelessWidget {
  const NavigationPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NavigationCubit>();

    return Container(
      width: 200,
      color: Colors.blue,
      child: Column(
        children: [
          SizedBox(height: 50),
          Text("Navigation", style: TextStyle(color: Colors.white, fontSize: 18)),
          SizedBox(height: 20),
          ListTile(
            title: Text("Home", style: TextStyle(color: Colors.white)),
            onTap: () => cubit.selectPage(MainContentPage.home),
          ),
          ListTile(
            title: Text("Settings", style: TextStyle(color: Colors.white)),
            onTap: () => cubit.selectPage(MainContentPage.settings),
          ),
          ListTile(
            title: Text("Profile", style: TextStyle(color: Colors.white)),
            onTap: () => cubit.selectPage(MainContentPage.profile),
          ),
        ],
      ),
    );
  }
}
