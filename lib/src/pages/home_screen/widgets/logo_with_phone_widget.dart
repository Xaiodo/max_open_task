import 'package:flutter/material.dart';
import 'package:max_open_task/src/values/app_colors.dart';

class LogoWithPhoneWidget extends StatelessWidget {
  const LogoWithPhoneWidget({super.key});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Text('logo'),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.phone_outlined,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
