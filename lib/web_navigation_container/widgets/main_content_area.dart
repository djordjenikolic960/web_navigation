import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_navigation/web_navigation_container/cubit/navigation_cubit.dart';
import 'package:web_navigation/web_navigation_container/cubit/navigation_state.dart';

class MainContentArea extends StatelessWidget {
  const MainContentArea({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        Widget content;
        switch (state.selectedPage) {
          case MainContentPage.home:
            content = HomeContent(
                onItemClick: context.read<NavigationCubit>().openPanel);
            break;
          case MainContentPage.settings:
            content = Center(child: Text("Settings Page"));
            break;
          case MainContentPage.profile:
            content = Center(child: Text("Profile Page"));
            break;
        }
        return Container(color: Colors.white, child: content);
      },
    );
  }
}

class HomeContent extends StatelessWidget {
  final Function(String) onItemClick;

  const HomeContent({
    super.key,
    required this.onItemClick,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: 10,
      itemBuilder: (context, index) {
        final item = "Item $index";
        return ListTile(
          title: Text(item),
          trailing: const Icon(Icons.delete),
          onTap: () => onItemClick(item),
        );
      },
    );
  }
}
