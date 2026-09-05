import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fly_logistics/features/tracking/screens/payment_screen.dart';
import 'package:fly_logistics/shared/widgets/app_button.dart';

import '../../../core/Theme/app_colors.dart';
import '../../../l10n/app_localizations.dart';
import '../../../shared/widgets/custom_header.dart';
import '../models/package_model.dart';

class TrackingScreenDetail extends ConsumerStatefulWidget {
  final PackageModel package;

  const TrackingScreenDetail({
    super.key,
    required this.package,
  });

  @override
  ConsumerState<TrackingScreenDetail> createState() =>
      TrackingScreenDetailState();
}

class TrackingScreenDetailState
    extends ConsumerState<TrackingScreenDetail> {

  @override
  Widget build(BuildContext context) {
    final package = widget.package;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [

                /// HEADER
                CustomHeader(
                  title:  AppLocalizations.of(context)!.expedition_details,
                  leftIcon: Icons.arrow_back,
                  rightIcon: Icons.more_vert,

                  onLeftPressed: () {
                    Navigator.pop(context);
                  },

                  onRightPressed: () {},
                ),

                const SizedBox(height: 10),

                /// CARTE PRINCIPALE
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: const EdgeInsets.all(10),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      /// IMAGE DU COLIS
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),

                        child: SizedBox(
                          height: 184,
                          width: double.infinity,

                          child: Image.asset(
                            package.imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      /// STATUT
                      Row(
                        children: [

                          CircleAvatar(
                            radius: 4,
                            backgroundColor:
                            _getStatusColor(package.status),
                          ),

                          const SizedBox(width: 5),

                          Text(
                            _getStatusText(package.status),
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color:
                              _getStatusColor(package.status),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 5),

                      /// CODE DU COLIS
                      Row(
                        children: [

                           Text(
                            "Colis ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),

                          Text(
                            "#${package.code}",
                            style:  TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 5),

                      /// DESCRIPTION
                      Text(
                        "Description : ${package.description}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.secondaryText,
                        ),
                      ),

                      const SizedBox(height: 15),

                      /// BOUTON
                      AppButton( text:  AppLocalizations.of(context)!.pay, onPressed: () { Navigator.push( context, MaterialPageRoute( builder: (_) => PaymentScreen( package: package, ), ), ); }, ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                /// INFORMATIONS
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,

                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                        children: [

                          _buildInfoCard(
                            context,
                            title:  AppLocalizations.of(context)!.weight,
                            value: "${package.weight} kg",
                          ),

                          _buildShippingMethodCard(
                            context,
                            package,
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                        children: [

                          _buildInfoCard(
                            context,
                            title:  AppLocalizations.of(context)!.expeditionDate,
                            value: _formatDate(
                              package.shippingDate,
                            ),
                          ),

                          _buildInfoCard(
                            context,
                            title: AppLocalizations.of(context)!.payMOntant,
                            value:
                            "${package.amountToPay.toStringAsFixed(0)} XAF",
                            valueColor: AppColors.primary,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                /// BOUTONS BAS
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                    children: [

                      GestureDetector(
                        onTap: () {},

                        child: Container(
                          width:
                          MediaQuery.of(context).size.width * 0.25,
                          height: 82,

                          alignment: Alignment.center,

                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(10),

                            color:
                            AppColors.backgroundLight,

                            border: Border.all(
                              width: 1.5,
                              color: AppColors.primary,
                            ),
                          ),

                          child: Text(
                            AppLocalizations.of(context)!.support,
                            textAlign: TextAlign.center,

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: () { Navigator.push( context, MaterialPageRoute( builder: (_) => PaymentScreen( package: package, ), ), ); },

                        child: Container(
                          alignment: Alignment.center,

                          width:
                          MediaQuery.of(context).size.width * 0.45,

                          height: 82,

                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(10),

                            color: AppColors.primary,
                          ),

                          child:  Text(
                            AppLocalizations.of(context)!.pay,

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color:
                              AppColors.backgroundLight,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// CARTE D'INFORMATION
  Widget _buildInfoCard(
      BuildContext context, {
        required String title,
        required String value,
        Color? valueColor,
      }) {
    return Container(
      height: 82,
      width: MediaQuery.of(context).size.width * 0.35,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),

        border: Border.all(
          width: 1,
          color: AppColors.secondary,
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(10),

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            Text(
              title,

              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.secondaryText,
              ),
            ),

            const SizedBox(height: 3),

            Text(
              value,

              overflow: TextOverflow.ellipsis,

              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,

                color: valueColor ??
                    Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// MODE D'EXPÉDITION
  Widget _buildShippingMethodCard(
      BuildContext context,
      PackageModel package,
      ) {
    final isAir =
        package.shippingMethod == ShippingMethod.air;

    return Container(
      height: 68,
      width: MediaQuery.of(context).size.width * 0.35,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),

        border: Border.all(
          width: 1,
          color: AppColors.secondary,
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(10),

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

             Text(
            AppLocalizations.of(context)!.mode,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.secondaryText,
              ),
            ),

            const SizedBox(height: 3),

            Row(
              children: [

                Icon(
                  isAir
                      ? Icons.airplanemode_active_rounded
                      : Icons.directions_boat,

                  color: AppColors.primary,
                  size: 20,
                ),

                const SizedBox(width: 5),

                Expanded(
                  child: Text(
                    isAir
                        ? "Avion (Air)"
                        : "Bateau (Mer)",

                    overflow:
                    TextOverflow.ellipsis,

                    style:  TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// TEXTE DU STATUT
  String _getStatusText(PackageStatus status) {
    switch (status) {

      case PackageStatus.preparing:
        return AppLocalizations.of(context)!.preparation;

      case PackageStatus.transit:
        return AppLocalizations.of(context)!.transit;

      case PackageStatus.arrived:
        return AppLocalizations.of(context)!.arriveCenter;

      case PackageStatus.delivered:
        return AppLocalizations.of(context)!.delivery;
    }
  }

  /// COULEUR DU STATUT
  Color _getStatusColor(PackageStatus status) {
    switch (status) {

      case PackageStatus.preparing:
        return Colors.orange;

      case PackageStatus.transit:
        return AppColors.primary;

      case PackageStatus.arrived:
        return Colors.blue;

      case PackageStatus.delivered:
        return Colors.green;
    }
  }

  /// FORMAT DE DATE
  String _formatDate(DateTime date) {
    const months = [
      "JAN",
      "FÉV",
      "MAR",
      "AVR",
      "MAI",
      "JUN",
      "JUL",
      "AOÛ",
      "SEP",
      "OCT",
      "NOV",
      "DÉC",
    ];

    return "${date.day} ${months[date.month - 1]} ${date.year}";
  }
}