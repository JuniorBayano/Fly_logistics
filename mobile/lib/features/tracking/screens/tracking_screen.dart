import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fly_logistics/l10n/app_localizations.dart';

import '../../../core/Theme/app_colors.dart';
import '../../../shared/widgets/custom_header.dart';
import '../../../shared/widgets/package_card.dart';
import '../data/fake_packages.dart';
import '../models/package_model.dart';

class TrackingScreen extends ConsumerStatefulWidget {
  const TrackingScreen({super.key});

  @override
  ConsumerState<TrackingScreen> createState() => TrackingScreenState();
}

class TrackingScreenState extends ConsumerState<TrackingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CustomHeader(
                          title: AppLocalizations.of(context)!.appName,

                          leftIcon: Icons.menu,

                          rightIcon: Icons.search_rounded,

                          onLeftPressed: () {},

                          onRightPressed: () {},
                        ),

                        // MENU DES ONGLETS
                        const SizedBox(height: 10),

                        TabBar(
                          indicatorColor: AppColors.primary,
                          indicatorWeight: 3,
                          indicatorSize: TabBarIndicatorSize.label,

                          labelColor: AppColors.primary,
                          unselectedLabelColor:
                          AppColors.secondaryText,

                          labelStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),

                          unselectedLabelStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),

                          tabs:  [
                            Tab(
                              text:AppLocalizations.of(context)!.progress,
                            ),
                            Tab(
                              text: AppLocalizations.of(context)!.finish,
                            ),
                            Tab(
                              text:AppLocalizations.of(context)!.all,
                            ),
                          ],
                        ),

                        SizedBox(height: 20),
                        SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child:  TabBarView(
                            children: [

                              /// COLIS EN COURS
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),

                                itemCount: fakePackages
                                    .where(
                                      (package) =>
                                  package.status !=
                                      PackageStatus.delivered,
                                )
                                    .length,

                                itemBuilder: (context, index) {

                                  final packages = fakePackages
                                      .where(
                                        (package) =>
                                    package.status !=
                                        PackageStatus.delivered,
                                  )
                                      .toList();

                                  return PackageCard(
                                    package: packages[index],
                                  );
                                },
                              ),

                              /// COLIS TERMINÉS
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),

                                itemCount: fakePackages
                                    .where(
                                      (package) =>
                                  package.status ==
                                      PackageStatus.delivered,
                                )
                                    .length,

                                itemBuilder: (context, index) {

                                  final packages = fakePackages
                                      .where(
                                        (package) =>
                                    package.status ==
                                        PackageStatus.delivered,
                                  )
                                      .toList();

                                  return PackageCard(
                                    package: packages[index],
                                  );
                                },
                              ),

                              /// TOUS LES COLIS
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),

                                itemCount: fakePackages.length,

                                itemBuilder: (context, index) {
                                  return PackageCard(
                                    package: fakePackages[index],
                                  );
                                },
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}