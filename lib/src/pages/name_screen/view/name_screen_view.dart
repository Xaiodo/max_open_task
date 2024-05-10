import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_open_task/src/pages/name_screen/cubit/name_screen_cubit.dart';
import 'package:max_open_task/src/pages/name_screen/cubit/name_screen_state.dart';
import 'package:max_open_task/src/values/app_colors.dart';
import 'package:max_open_task/src/values/app_strings.dart';

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
              BlocProvider(
                create: (context) => NameScreenCubit(),
                child: BlocConsumer<NameScreenCubit, NameScreenState>(
                  listener: (context, state) {
                    if (state.isNavigate) {
                      Navigator.of(context).pushNamed(
                        NameScreenConstants.homeRoute,
                        arguments: state.name,
                      );
                    }
                  },
                  builder: (context, state) {
                    return Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CustomTextField(
                            hintText: AppStrings.nameHint,
                            onChanged:
                                context.read<NameScreenCubit>().updateName,
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: state.isNameValid
                                  ? context
                                      .read<NameScreenCubit>()
                                      .continueButtonPressed
                                  : () {},
                              child: state.isLoading
                                  ? const SizedBox(
                                      height:
                                          NameScreenConstants.indicatorHeight,
                                      width: NameScreenConstants.indicatorWidth,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        backgroundColor: Colors.transparent,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                AppColors.white),
                                      ),
                                    )
                                  : const Text(AppStrings.continueText),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: NameScreenConstants.basicSpacing),
            ],
          ),
        ),
      ),
    );
  }
}
