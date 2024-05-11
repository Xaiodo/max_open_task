import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_open_task/src/pages/name_screen/cubit/name_screen_cubit.dart';
import 'package:max_open_task/src/pages/name_screen/view/name_screen_view.dart';

class NameScreenPage extends StatelessWidget {
  const NameScreenPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => NameScreenCubit(),
        child: const NameScreenView(),
      );
}
