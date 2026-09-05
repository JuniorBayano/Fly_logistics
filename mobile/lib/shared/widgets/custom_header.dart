import 'package:flutter/material.dart';
import '../../../core/Theme/app_colors.dart';

class CustomHeader extends StatelessWidget {
  final String title;

  final IconData leftIcon;
  final IconData rightIcon;

  final VoidCallback? onLeftPressed;
  final VoidCallback? onRightPressed;

  const CustomHeader({
    super.key,
    required this.title,
    required this.leftIcon,
    required this.rightIcon,
    this.onLeftPressed,
    this.onRightPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 73,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [

          // ICON GAUCHE
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
            child: IconButton(
              onPressed: onLeftPressed,
              icon: Icon(
                leftIcon,
                color: AppColors.primary,
                size: 40,
              ),
            ),
          ),

          const SizedBox(width: 15),

          // TEXTE AU MILIEU
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // ICON DROITE
          IconButton(
            onPressed: onRightPressed,
            icon: Icon(
              rightIcon,
              color: AppColors.primary,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}