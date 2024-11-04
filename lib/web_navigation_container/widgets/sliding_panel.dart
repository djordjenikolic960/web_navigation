import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_navigation/web_navigation_container/cubit/navigation_cubit.dart';
import 'package:web_navigation/web_navigation_container/cubit/navigation_state.dart';

class SlidingPanel extends StatelessWidget {
  const SlidingPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: state.isPanelOpen ? 600 : 0,
          color: Colors.grey[200],
          child: state.isPanelOpen
              ? SlidingPanelContent(
                  item: state.selectedItem!,
                  onClose: context.read<NavigationCubit>().closePanel,
                )
              : null,
        );
      },
    );
  }
}

class SlidingPanelContent extends StatelessWidget {
  final String item;
  final VoidCallback onClose;

  SlidingPanelContent({required this.item, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Details",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: onClose,
              ),
            ],
          ),
          SizedBox(height: 20),
          Text("Selected Item: $item", style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
