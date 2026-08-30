import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/Theme/app_colors.dart';
import '../../features/tracking/models/package_model.dart';
import '../../features/tracking/screens/tracking_detail_screen.dart';

class PackageCard extends StatelessWidget {
  final PackageModel package;

  const PackageCard({
    super.key,
    required this.package,
  });

  String getShippingMethod() {
    switch (package.shippingMethod) {
      case ShippingMethod.air:
        return 'Aérien';

      case ShippingMethod.sea:
        return 'Maritime';
    }
  }

  IconData getShippingIcon() {
    switch (package.shippingMethod) {
      case ShippingMethod.air:
        return Icons.airplanemode_active_rounded;

      case ShippingMethod.sea:
        return Icons.directions_boat_rounded;

    }
  }

  String getStatusText() {
    switch (package.status) {
      case PackageStatus.preparing:
        return 'En préparation';

      case PackageStatus.transit:
        return 'En transit';

      case PackageStatus.arrived:
        return 'Arrivé au centre';

      case PackageStatus.delivered:
        return 'Livré';
    }
  }

  Color getStatusColor() {
    switch (package.status) {
      case PackageStatus.preparing:
        return Colors.orange;

      case PackageStatus.transit:
        return Colors.blue;

      case PackageStatus.arrived:
        return Colors.purple;

      case PackageStatus.delivered:
        return Colors.green;
    }
  }

  String formatDate(DateTime date) {
    final day = date.day.toString().padLeft(2, '0');
    final month = date.month.toString().padLeft(2, '0');
    final year = date.year.toString();

    return '$day/$month/$year';
  }

  @override
  Widget build(BuildContext context) {
    final statusColor = getStatusColor();

    return Container(
      width: double.infinity,
      height: 198,
      margin: const EdgeInsets.only(bottom: 15),

      decoration: BoxDecoration(
        color: AppColors.backgroundLight,

        borderRadius: BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(10),

        child: Column(
          children: [

            /// PREMIERE LIGNE
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,

              children: [

                const Text(
                  'EXPÉDITION',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondaryText,
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),

                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.1),

                    borderRadius:
                    BorderRadius.circular(10),
                  ),

                  child: Row(
                    children: [

                      SvgPicture.asset(
                        'assets/images/c.svg',
                        width: 25,
                        height: 15,
                        colorFilter: ColorFilter.mode(
                          statusColor,
                          BlendMode.srcIn,
                        ),
                      ),

                      const SizedBox(width: 5),

                      Text(
                        getStatusText(),

                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: statusColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 5),

            /// CODE DU COLIS
            Align(
              alignment: Alignment.centerLeft,

              child: Text(
                '#${package.code}',

                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.backgroundDark,
                ),
              ),
            ),

            const SizedBox(height: 8),

            /// MODE + PROGRESSION
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,

              children: [

                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    Row(
                      children: [

                        Icon(
                          getShippingIcon(),
                          color: AppColors.primary,
                          size: 18,
                        ),

                        const SizedBox(width: 5),

                        Text(
                          'Mode : ${getShippingMethod()}',

                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: AppColors.secondaryText,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),

                    Row(
                      children: [

                        const Icon(
                          Icons.calendar_today_rounded,
                          color: AppColors.primary,
                          size: 14,
                        ),

                        const SizedBox(width: 5),

                        Text(
                          'Livraison : ${formatDate(package.estimatedDeliveryDate)}',
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: AppColors.secondaryText,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [

                    SizedBox(
                      width: 80,

                      child: ClipRRect(
                        borderRadius:
                        BorderRadius.circular(10),

                        child:
                        LinearProgressIndicator(
                          value: package.progress,

                          minHeight: 7,

                          backgroundColor:
                          AppColors.secondary,

                          valueColor:
                          const AlwaysStoppedAnimation<
                              Color>(
                            AppColors.primary,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      'PROGRESSION : '
                          '${(package.progress * 100).toInt()}%',

                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: AppColors.secondaryText,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const Spacer(),

            /// BOUTON
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,

                foregroundColor: Colors.white,

                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(10),
                ),
              ),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TrackingScreenDetail(
                      package: package,
                    ),
                  ),
                );
              },

              child: const Row(
                mainAxisAlignment:
                MainAxisAlignment.center,

                children: [

                  Text(
                    'Voir détail',

                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(width: 5),

                  Icon(
                    Icons.arrow_forward_rounded,
                    size: 18,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}