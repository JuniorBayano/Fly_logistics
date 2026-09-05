import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/Theme/app_colors.dart';
import '../../l10n/app_localizations.dart';
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
      backgroundColor:Theme.of(context).scaffoldBackgroundColor,
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
                            AppLocalizations.of(context)!.shipping_estimator,
                            style:  TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            AppLocalizations.of(context)!.shipping_estimator_description,
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
                            label: AppLocalizations.of(context)!.origin,
                            hintText: AppLocalizations.of(context)!.departure_city_or_country,
                            icon: Icons.location_on_outlined,
                            controller: departureController,
                          ),
                          SizedBox(height: 10),
                          EstimateTextField(
                            label: AppLocalizations.of(context)!.destination,
                            hintText: AppLocalizations.of(context)!.arrival_city_or_country,
                            icon: Icons.outlined_flag_rounded,
                            controller: arrivalController,
                          ),
                          SizedBox(height: 10),
                          EstimateTextField(
                            label: AppLocalizations.of(context)!.weight_kg,
                            hintText: "Ex:2.5",
                            icon: Icons.scale_outlined,
                            keyboardType: const TextInputType.numberWithOptions( decimal: true, ),
                            controller: weightController,
                          ),
                          SizedBox(height: 10),
                          EstimateTextField(
                            label:AppLocalizations.of(context)!.transport_method,
                            hintText: AppLocalizations.of(context)!.choose_transport_method,
                            icon: Icons.local_shipping_outlined,
                            isDropdown: true,
                            items:  [
                              AppLocalizations.of(context)!.air_freight,
                              AppLocalizations.of(context)!.sea_freight
                            ],
                            selectedValue: selectedTransport,
                            onChanged: (value) {
                              setState(() {
                                selectedTransport = value;
                              });}
                          ),
                          SizedBox(height: 15),
                          AppButton(
                            text: AppLocalizations.of(context)!.calculate_quote,
                            onPressed: () {  },
                          ),
                          SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.standard_rates_per_kg,
                                style:  TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.secondary,
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
                                color:Theme.of(context).colorScheme.surfaceContainer,
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
                                      AppLocalizations.of(context)!.air_shipping,
                                      style:  TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color:Theme.of(context).colorScheme.secondary,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.air_shipping_duration,
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
                                color:Theme.of(context).colorScheme.surfaceContainer,
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
                                    AppLocalizations.of(context)!.sea_freight,
                                      style:  TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Theme.of(context).colorScheme.secondary,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.sea_shipping_duration,
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
                                          fontSize: 14,
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
                              border: Border.all(width: 1,color: AppColors.secondary),
                              color: Theme.of(context).colorScheme.surfaceContainer,
                            ),
                            child:  Row(
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
                                      Text(
                                        AppLocalizations.of(context)!.additional_information,
                                        style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Theme.of(context).colorScheme.secondary,
                                      ),),
                                      Text(
                                        AppLocalizations.of(context)!.estimated_rates_notice,
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