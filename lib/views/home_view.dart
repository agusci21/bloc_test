import 'package:bloc_test/blocs/bloc/bottom_navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bloc_test/widgets/custom_navigation_bar_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<BottomNavigationBloc, int>(
          builder: (context, tap) {
            return Text('Tab seleccionado: ${tap + 1} 🤴🏻');
          },
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
