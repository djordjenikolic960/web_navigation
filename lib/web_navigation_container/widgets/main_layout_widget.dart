import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_navigation/web_navigation_container/cubit/navigation_cubit.dart';
import 'package:web_navigation/web_navigation_container/widgets/sliding_panel.dart';

import 'main_content_area.dart';
import 'navigation_panel.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => NavigationCubit(),
        child: const Row(
          children: [
            NavigationPanel(),
            Expanded(
              flex: 1,
              child: MainContentArea(),
            ),
            SlidingPanel(),
          ],
        ),
      ),
    );
  }
}
