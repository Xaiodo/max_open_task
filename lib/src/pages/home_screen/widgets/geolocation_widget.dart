import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:max_open_task/src/pages/home_screen/cubit/home_screen_cubit.dart';
import 'package:max_open_task/src/values/app_colors.dart';
import 'package:max_open_task/src/values/app_constants.dart';
import 'package:max_open_task/src/values/app_theme.dart';

class GeolocationWidget extends StatelessWidget {
  const GeolocationWidget({
    super.key,
    this.isConnectivityOrLocationError = false,
    this.isInitial = false,
    this.isLoading = false,
  });

  final bool isConnectivityOrLocationError;
  final bool isInitial;
  final bool isLoading;

  @override
  Widget build(BuildContext context) => Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: HomeScreenConstants.marginVertical,
              horizontal: HomeScreenConstants.marginHorizontal,
            ),
            height: MediaQuery.of(context).size.height *
                HomeScreenConstants.imageHeightPercentage,
            width: MediaQuery.of(context).size.width *
                HomeScreenConstants.imageWidthPercentage,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  HomeScreenConstants.geolocationImagePath,
                ),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  HomeScreenConstants.containerBorderRadius,
                ),
              ),
            ),
            child: isConnectivityOrLocationError || isLoading
                ? Container(
                    decoration: BoxDecoration(
                      color: AppColors.onContainer,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          HomeScreenConstants.containerBorderRadius,
                        ),
                      ),
                    ),
                    child: isLoading
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircularProgressIndicator(),
                              const SizedBox(
                                  height: HomeScreenConstants.spacing),
                              Text(
                                HomeScreenConstants.homeContainerTextLoading,
                                style: Theme.of(context).textTheme.bodyLarge,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      HomeScreenConstants
                                          .containerIconBorderRadius,
                                    ),
                                  ),
                                  color: AppColors.onContainerBackground,
                                ),
                                padding: const EdgeInsets.all(
                                  HomeScreenConstants.containerIconPadding,
                                ),
                                child: SvgPicture.asset(
                                  HomeScreenConstants.wifiIconPath,
                                  height: HomeScreenConstants.iconHeight,
                                ),
                              ),
                              const SizedBox(
                                  height: HomeScreenConstants.spacing),
                              Text(
                                HomeScreenConstants
                                    .homeContainerTextInternetError,
                                style: Theme.of(context).textTheme.bodyLarge,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                  height: HomeScreenConstants.spacing),
                              Text(
                                HomeScreenConstants
                                    .homeContainerTextInternetErrorSubtitle,
                                style: Theme.of(context).textTheme.bodySmall,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                  height: HomeScreenConstants.spacing),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () => context
                                        .read<HomeScreenCubit>()
                                        .checkConnectivityAndLocation(),
                                    child: Text(
                                      HomeScreenConstants
                                          .homeContainerTextConfigureGeolocation,
                                      style: Theme.of(context)
                                          .textTheme
                                          .homeScreenCardTextGreen,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: HomeScreenConstants.iconLeftSpacing,
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: HomeScreenConstants.iconSize,
                                    color: AppColors.primary,
                                  ),
                                ],
                              )
                            ],
                          ),
                  )
                : null,
          ),
        ],
      );
}
