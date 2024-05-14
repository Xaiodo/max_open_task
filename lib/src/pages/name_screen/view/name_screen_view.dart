import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_open_task/src/pages/name_screen/cubit/name_screen_cubit.dart';
import 'package:max_open_task/src/pages/name_screen/cubit/name_screen_state.dart';
import 'package:max_open_task/src/values/app_colors.dart';
import 'package:max_open_task/src/values/app_strings.dart';
import 'package:max_open_task/src/values/app_theme.dart';

import '../../../values/app_constants.dart';
import '../../../widgets/custom_text_field.dart';

class NameScreenView extends StatelessWidget {
  const NameScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: NameScreenConstants.horizontalPadding,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: NameScreenConstants.topPadding),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '${AppStrings.howToAddress}\n',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      WidgetSpan(
                        child: Container(
                          height: NameScreenConstants.basicSpacing,
                        ),
                      ),
                      TextSpan(
                        text: '${AppStrings.pleaseEnterName}\n',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: NameScreenConstants.afterAddressTextSpacing,
                ),
                CustomTextField(
                  hintText: AppStrings.nameHint,
                  onChanged: context.read<NameScreenCubit>().updateName,
                ),
                const SizedBox(height: NameScreenConstants.basicSpacing),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: BlocConsumer<NameScreenCubit, NameScreenState>(
          listener: (context, state) {
            if (state.isNavigate) {
              Navigator.of(context).pushReplacementNamed(
                NameScreenConstants.homeRoute,
                arguments: state.name,
              );
            }
          },
          builder: (context, state) {
            return Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                left: NameScreenConstants.horizontalPadding,
                right: NameScreenConstants.horizontalPadding,
              ),
              child: ElevatedButton(
                onPressed: state.isNameValid
                    ? context.read<NameScreenCubit>().continueButtonPressed
                    : () {},
                child: SizedBox(
                  height: NameScreenConstants.indicatorHeight,
                  width: state.isLoading
                      ? NameScreenConstants.indicatorWidth
                      : null,
                  child: state.isLoading
                      ? const CircularProgressIndicator(
                          strokeWidth: 2,
                          backgroundColor: Colors.transparent,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(AppColors.white),
                        )
                      : Text(
                          AppStrings.continueText,
                          style: Theme.of(context).textTheme.buttonText,
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
