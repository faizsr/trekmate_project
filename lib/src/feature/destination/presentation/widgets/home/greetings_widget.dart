import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:trekgo_project/changer/widgets/reusable_widgets/alerts_and_navigates.dart';
import 'package:trekgo_project/src/config/constants/app_colors.dart';
import 'package:trekgo_project/src/config/utils/gap.dart';
import 'package:trekgo_project/src/feature/user/presentation/controllers/user_controller.dart';

class GreetingsWidget extends StatelessWidget {
  const GreetingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<UserController>(context, listen: false).getUserDetails();
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Consumer<UserController>(
          builder: (context, value, child) {
            if (value.user != null) {
              final user = value.user!;
              String fullname = user.name.capitalise();
              return Row(
                children: [
                  Text(
                    'Hello $fullname',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                  Icon(
                    MdiIcons.humanGreeting,
                    size: 18,
                  )
                ],
              );
            }
            return Container();
          },
        ),
        const Gap(height: 3),
        Text(
          'Find Your Dream\nDestination',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.darkTeal,
          ),
        ),
      ],
    );
  }
}
