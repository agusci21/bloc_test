import 'package:bloc_test/blocs/bloc/bottom_navigation_bloc.dart';
import 'package:bloc_test/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavigationBloc(),
      child: const HomeView(),
    );
  }
}

