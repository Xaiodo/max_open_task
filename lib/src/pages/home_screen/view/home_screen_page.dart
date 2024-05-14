import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:max_open_task/src/pages/home_screen/cubit/home_screen_cubit.dart';
import 'package:max_open_task/src/pages/home_screen/view/home_screen_view.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => HomeScreenCubit(
          connectivity: Connectivity(),
          geolocatorPlatform: GeolocatorPlatform.instance,
        ),
        child: const HomeScreenView(),
      );
}
