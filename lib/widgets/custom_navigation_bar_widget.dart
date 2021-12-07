import 'package:bloc_test/blocs/bloc/bottom_navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, int>(
      builder: (context, currentTapIndex) {
        return BottomNavigationBar(
          onTap: (index) =>
              context.read<BottomNavigationBloc>().add(TabChangeEvent(index)),
          currentIndex: currentTapIndex,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.rice_bowl), label: 'Rice Bowl'),
            BottomNavigationBarItem(
                icon: Icon(Icons.rotate_90_degrees_ccw_outlined),
                label: 'rotate_90_degrees')
          ],
        );
      },
    );
  }
}
