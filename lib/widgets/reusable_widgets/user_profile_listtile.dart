import 'package:flutter/material.dart';

class UserProfileListtile extends StatelessWidget {
  final String titleText;
  final Function()? onTapIcon;
  const UserProfileListtile({
    super.key,
    required this.titleText,
    this.onTapIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapIcon,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.06,
        child: ListTile(
          title: Text(
            titleText,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
