import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/Theme/app_colors.dart';
import '../../../shared/widgets/custom_header.dart';
import '../models/package_model.dart';

class PaymentScreen extends ConsumerStatefulWidget {
  final PackageModel package;

  const PaymentScreen({
    super.key,
    required this.package,
  });

  @override
  ConsumerState<PaymentScreen> createState() => PaymentScreenState();
}

class PaymentScreenState extends ConsumerState<PaymentScreen> {
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
                CustomHeader(
                  title: "Détails de la transaction",
                  leftIcon: Icons.arrow_back,
                  rightIcon: Icons.more_vert,
                  onLeftPressed: () {
                    Navigator.pop(context);
                  },
                  onRightPressed: () {},
                ),
                const SizedBox(height: 20),
                const Text(
                  "MONTANT À RÉGLER",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondaryText,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "${package.amountToPay.toStringAsFixed(0)} XAF",
                  style:  TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Référence : ${package.code}",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondaryText,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: AppColors.secondaryText,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/waiting.svg",
                        width: 48,
                        height: 48,
                      ),
                      const SizedBox(width: 10),
                       Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Statut du paiement",
                              style: TextStyle(
                                fontSize: 11.5,
                                color: AppColors.secondaryText,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "En attente de justificatif",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Color(0xFFD97706),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Action requise",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFD97706),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                 Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Preuve de paiement",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Veuillez télécharger une capture d'écran ou un PDF de votre confirmation de virement bancaire pour valider votre commande.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.secondaryText,
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {},
                  child: DottedBorder(
                    options: RoundedRectDottedBorderOptions(
                      color: AppColors.primary,
                      strokeWidth: 2,
                      dashPattern: const [8, 4],
                      radius: const Radius.circular(15),
                    ),
                    child: Container(
                      height: 204,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceBright,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/upload.svg",
                            width: 60,
                            height: 60,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Uploader preuve de paiement",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: AppColors.primary,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Format JPG, PNG ou PDF (max 5 Mo)",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.secondaryText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD1FAE5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.info,
                        size: 24,
                        color: AppColors.primary,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Une fois le document envoyé, nos services logistiques valideront votre paiement sous 2 à 4 heures ouvrées. Vous recevrez une notification de confirmation.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF065F46),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Divider(),
                const SizedBox(height: 10),
                const Text(
                  "Besoin d'aide avec votre paiement ?",
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.secondaryText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.support_agent,
                        size: 24,
                        color: AppColors.primary,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Support Fly",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.file_copy,
                        size: 24,
                        color: AppColors.primary,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Facture PDF",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.linked_camera_outlined,
                          size: 24,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Uploader le justificatif",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}