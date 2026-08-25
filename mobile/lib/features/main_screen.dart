import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fly_logistics/features/menu/dashboard.dart';
import 'package:fly_logistics/features/pricing/pricing_screen.dart';
import 'package:fly_logistics/features/profile/profile_screen.dart';
import 'package:fly_logistics/features/tracking/screens/tracking_screen.dart';

import '../../../core/providers/navigation_provider.dart';
import '../../../shared/widgets/app_bottom_nav_bar.dart';


class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  late PageController _pageController;

  final List<Widget> pages =  [
    DashboardSCreen(),
    TrackingScreen(),
    PricingScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();

    _pageController = PageController(
      initialPage: ref.read(navigationProvider),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,

        onPageChanged: (index) {
          ref
              .read(navigationProvider.notifier)
              .changeIndex(index);
        },

        children: pages,
      ),

      bottomNavigationBar: AppBottomNavBar(
        pageController: _pageController,
      ),
    );
  }
}