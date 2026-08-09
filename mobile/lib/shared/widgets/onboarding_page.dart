import 'package:flutter/material.dart';
import 'package:fly_logistics/core/Theme/app_colors.dart';

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(height: 10),

          Expanded(
            flex: 6,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),

          const SizedBox(height: 20),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.backgroundDark,
            ),
          ),

          const SizedBox(height: 15),

          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: AppColors.secondaryText,
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}