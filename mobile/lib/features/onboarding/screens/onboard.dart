import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fly_logistics/core/Theme/app_colors.dart';

import 'package:fly_logistics/shared/models/onboarding_model.dart';

import '../../../l10n/app_localizations.dart';
import '../../../shared/widgets/onboarding_page.dart';
import '../../../shared/widgets/page_indicator.dart';

class OnboardScreen extends ConsumerStatefulWidget {
  const OnboardScreen({super.key});

  @override
  ConsumerState<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends ConsumerState<OnboardScreen> {
  int currentPage = 0;

  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    final pages = [

      OnboardingModel(
        image: "assets/images/onboard1_1.png",
        title: local.onboardingTitle1,
        description: local.onboardingDescription1,
      ),

      OnboardingModel(
        image: "assets/images/onboard2.png",
        title: local.onboardingTitle1,
        description: local.onboardingDescription1,
      ),

      OnboardingModel(
        image: "assets/images/onboard3.png",
        title: local.onboardingTitle1,
        description: local.onboardingDescription1,
      ),
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                  },
                  child: Text(
                    local.skip,
                    style: const TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Expanded(
                child: PageView.builder(
                  controller: pageController,

                  itemCount: pages.length,

                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },

                  itemBuilder: (context, index) {

                    final page = pages[index];

                    return OnboardingPage(
                      image: page.image,
                      title: page.title,
                      description: page.description,
                    );
                  },
                ),
              ),

              PageIndicator(
                currentPage: currentPage,
                pageCount: pages.length,
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  minimumSize: Size(
                    MediaQuery.of(context).size.width,
                    55,
                  ),
                ),

                onPressed: () {

                  if (currentPage < pages.length - 1) {

                    pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );

                  } else {


                  }

                },

                child: Text(
                  currentPage == pages.length - 1
                      ? local.start
                      : local.next,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}