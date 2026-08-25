import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fly_logistics/core/Theme/app_colors.dart';
import 'package:fly_logistics/core/providers/navigation_provider.dart';
import 'package:fly_logistics/l10n/app_localizations.dart';

class AppBottomNavBar extends ConsumerWidget {
  final PageController pageController;

  const AppBottomNavBar({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navigationProvider);

    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: AppColors.backgroundLight,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildItem(
            context: context,
            ref: ref,
            index: 0,
            icon: Icons.home_outlined,
            activeIcon: Icons.home,
            label:AppLocalizations.of(context)!.home,
            currentIndex: currentIndex,
          ),

          _buildItem(
            context: context,
            ref: ref,
            index: 1,
            icon: Icons.inventory_2_outlined,
            activeIcon: Icons.inventory_2_outlined,
            label: AppLocalizations.of(context)!.followUp,
            currentIndex: currentIndex,
          ),

          _buildItem(
            context: context,
            ref: ref,
            index: 2,
            icon: Icons.price_change,
            activeIcon: Icons.price_change,
            label:AppLocalizations.of(context)!.rate,
            currentIndex: currentIndex,
          ),

          _buildItem(
            context: context,
            ref: ref,
            index: 3,
            icon: Icons.person_outline,
            activeIcon: Icons.person,
            label:AppLocalizations.of(context)!.profil,
            currentIndex: currentIndex,
          ),
        ],
      ),
    );
  }

  Widget _buildItem({
    required BuildContext context,
    required WidgetRef ref,
    required int index,
    required IconData icon,
    required IconData activeIcon,
    required String label,
    required int currentIndex,
  }) {
    final bool isActive = currentIndex == index;

    return Expanded(
      child: InkWell(
        onTap: () {
          ref
              .read(navigationProvider.notifier)
              .changeIndex(index);

          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isActive ? activeIcon : icon,
              color: isActive
                  ? AppColors.primary
                  : AppColors.secondaryText,
              size: 24,
            ),

            const SizedBox(height: 4),

            Text(
              label,
              style: TextStyle(
                color: isActive
                    ? AppColors.primary
                    : AppColors.secondaryText,
                fontSize: 11,
                fontWeight: isActive
                    ? FontWeight.w600
                    : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}