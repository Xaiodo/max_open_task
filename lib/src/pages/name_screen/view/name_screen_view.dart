import 'package:flutter/material.dart';
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
                  height: NameScreenConstants.afterAddressTextSpacing),
              const CustomTextField(
                hintText: AppStrings.nameHint,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: Theme.of(context).elevatedButtonTheme.style,
                child: const Text(AppStrings.continueText),
              ),
              const SizedBox(height: NameScreenConstants.basicSpacing),
            ],
          ),
        ),
      ),
    );
  }
}
