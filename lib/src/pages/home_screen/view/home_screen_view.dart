import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_open_task/src/pages/home_screen/cubit/home_screen_cubit.dart';
import 'package:max_open_task/src/pages/home_screen/cubit/home_screen_state.dart';
import 'package:max_open_task/src/pages/home_screen/widgets/bottom_nav_widget.dart';
import 'package:max_open_task/src/pages/home_screen/widgets/card_widget.dart';
import 'package:max_open_task/src/pages/home_screen/widgets/geolocation_widget.dart';
import 'package:max_open_task/src/pages/home_screen/widgets/logo_with_phone_widget.dart';
import 'package:max_open_task/src/values/app_colors.dart';
import 'package:max_open_task/src/values/app_constants.dart';
import 'package:max_open_task/src/values/app_theme.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)?.settings.arguments as String;
    return Container(
      color: AppColors.primary,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom:
                          Radius.circular(HomeScreenConstants.cardBorderRadius),
                    ),
                    color: AppColors.primary,
                  ),
                  child: Column(
                    children: [
                      const LogoWithPhoneWidget(),
                      const SizedBox(height: HomeScreenConstants.spacing),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: HomeScreenConstants.sidePadding,
                          right: HomeScreenConstants.sidePadding,
                          bottom: HomeScreenConstants.bottomPadding,
                        ),
                        child: CardWidget(username: username),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: HomeScreenConstants.marginHorizontal),
                BlocBuilder<HomeScreenCubit, HomeScreenState>(
                    builder: (context, state) {
                  if (state.status.isLoading) {
                    return const GeolocationWidget(isLoading: true);
                  } else if (state.status.isConnectivityOrLocationError) {
                    return const GeolocationWidget(
                      isConnectivityOrLocationError: true,
                    );
                  } else if (state.status.isInitial) {
                    return const GeolocationWidget(
                      isInitial: true,
                    );
                  } else {
                    return const GeolocationWidget();
                  }
                }),
                const SizedBox(height: HomeScreenConstants.marginHorizontal),
                Padding(
                  padding: const EdgeInsets.only(
                    left: HomeScreenConstants.sidePadding,
                    right: HomeScreenConstants.sidePadding,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          HomeScreenConstants.buttonBorderRadius,
                        ),
                      ),
                    ),
                    child: Text(
                      HomeScreenConstants.homeScreenButtonText,
                      style:
                          Theme.of(context).textTheme.homeScreenCardTextAddCar,
                    ),
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: const BottomNavWidget(),
        ),
      ),
    );
  }
}
