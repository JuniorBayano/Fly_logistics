import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/Theme/app_colors.dart';
import '../../shared/widgets/app_button.dart';
import '../../shared/widgets/estimate_text_field.dart';

class PricingScreen extends ConsumerStatefulWidget {
  const PricingScreen({super.key});

  @override
  ConsumerState<PricingScreen> createState()=>PricingScreenState();
}

class PricingScreenState extends ConsumerState<PricingScreen>{

  final departureController = TextEditingController();
  final arrivalController = TextEditingController();
  final weightController = TextEditingController();

  String? selectedTransport;

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
    return Scaffold(
      backgroundColor:AppColors.backgroundLight,
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Expanded(
                  child:SingleChildScrollView(
                    child: Padding(padding:EdgeInsetsGeometry.only(left: 20,right: 20,top: 10,bottom: 10),
                      child: Column(
                        children: [
                          Text(
                            "ESTIMATEUR DE TRANSPORT",
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "Obtenez une estimation rapide pour vos envois internationaux.",
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color:  AppColors.secondaryText,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 15),
                          EstimateTextField(
                            label: "Origine",
                            hintText: "Ville ou pays de depart",
                            icon: Icons.location_on_outlined,
                            controller: departureController,
                          ),
                          SizedBox(height: 10),
                          EstimateTextField(
                            label: "Destination",
                            hintText: "Ville ou pays d'arrivee",
                            icon: Icons.outlined_flag_rounded,
                            controller: arrivalController,
                          ),
                          SizedBox(height: 10),
                          EstimateTextField(
                            label: "Poids(kg)",
                            hintText: "Ex:2.5",
                            icon: Icons.scale_outlined,
                            keyboardType: const TextInputType.numberWithOptions( decimal: true, ),
                            controller: weightController,
                          ),
                          SizedBox(height: 10),
                          EstimateTextField(
                            label: "Moyen de transport",
                            hintText: "Choisir un moyen de transport",
                            icon: Icons.local_shipping_outlined,
                            isDropdown: true,
                            items: const [
                              "Aérien",
                              "Maritime",
                            ],
                            selectedValue: selectedTransport,
                            onChanged: (value) {
                              setState(() {
                                selectedTransport = value;
                              });}
                          ),
                          SizedBox(height: 15),
                          AppButton(
                            text: "Calculer le devis",
                            onPressed: () {  },
                          ),
                          SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Tarifs Standard au kg",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Container(
                            padding:  EdgeInsetsGeometry.all(10),
                            width: MediaQuery.of(context).size.width,
                            height: 74,
                            decoration: BoxDecoration(
                                color:Color(0xFFE6F2F3),
                                borderRadius:BorderRadius.circular(15),
                              border: Border.all(width: 1,color: AppColors.secondary)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                    "assets/images/fly.svg",
                                  width:35,
                                  height: 35,
                                ),
                                SizedBox(width:15),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Fret Aérien",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "5-7 jours ouvrés",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.secondaryText
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "8500 XAF/kg",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                          color: AppColors.primary
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "Min. 1kg",
                                      style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.secondaryText
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding:  EdgeInsetsGeometry.all(10),
                            width: MediaQuery.of(context).size.width,
                            height: 74,
                            decoration: BoxDecoration(
                                color:Color(0xFFE6F2F3),
                                borderRadius:BorderRadius.circular(15),
                                border: Border.all(width: 1,color: AppColors.secondary)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/images/swim.svg",
                                  width:35,
                                  height: 35,
                                ),
                                SizedBox(width:15),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Fret Maritime",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "45-60 jours ouvrés",
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.secondaryText
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "360 000 XAF/CBM",
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.primary
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "Min 0.001cbm",
                                      style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.secondaryText
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 1,color: AppColors.secondary)
                            ),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  size: 24,
                                  color: AppColors.primary,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child:Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Information additionnelle",
                                        style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.backgroundDark,
                                      ),),
                                      Text(
                                        "Les tarifs affichés sont des estimations HT et peuvent varier selon la nature des marchandises(dangereuses, fragiles, hors gabarit).",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color:AppColors.secondaryText,
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  )
              )
            ],
          )
      ),

    );
  }
}