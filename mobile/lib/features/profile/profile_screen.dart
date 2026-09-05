import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/Theme/app_colors.dart';
import '../../l10n/app_localizations.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState()=>ProfileScreenState();
}

class ProfileScreenState extends ConsumerState<ProfileScreen>{

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
                    child: Padding(padding:EdgeInsetsGeometry.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                                "Fly Logistics",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 1.2,
                            color:AppColors.secondary,
                          ),
                          SizedBox(height: 5,),
                          Center(
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                CircleAvatar(
                                  backgroundColor: AppColors.primary,
                                  radius: 64,
                                  backgroundImage: const AssetImage( "assets/images/profile.jpeg", ),
                                ),
                                Positioned(
                                  bottom: 2,
                                  right: 2,
                                  child: GestureDetector(
                                  onTap: () {},
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: AppColors.primary,
                                        shape: BoxShape.circle,
                                        border: Border.all( color: AppColors.backgroundLight, width: 3, ), ),
                                      child: const Icon( Icons.edit, color: Colors.white, size: 19, ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Text(
                              "Junior Bayano 15",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.location_on_outlined,size:10,color: AppColors.primary,),
                              Text("Douala,Cameroun",style:TextStyle(fontSize:14,fontWeight: FontWeight.w500,color: AppColors.primary),)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Text(
                            AppLocalizations.of(context)!.personal_information,
                            style: TextStyle(
                              color: AppColors.secondaryText,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 72,
                            padding: EdgeInsetsGeometry.all(10),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surfaceContainer,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 8,
                                  spreadRadius: 1,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                    "assets/images/phone.svg",
                                    width:40,
                                  height: 40,
                                ),
                                SizedBox(width: 15,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                    AppLocalizations.of(context)!.phone,
                                      style: TextStyle(
                                        color: AppColors.secondaryText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      "+237 6xx xxx xxx",
                                      style: TextStyle(
                                        color: Theme.of(context).colorScheme.secondary,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 72,
                            padding: EdgeInsetsGeometry.all(10),
                            decoration: BoxDecoration(
                              color:Theme.of(context).colorScheme.surfaceContainer,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 8,
                                  spreadRadius: 1,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/images/email.svg",
                                  width:40,
                                  height: 40,
                                ),
                                SizedBox(width: 15,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                    AppLocalizations.of(context)!.email,
                                      style: TextStyle(
                                        color: AppColors.secondaryText,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      "tsafackjuniordauphin@gmail.com",
                                      style: TextStyle(
                                        color: Theme.of(context).colorScheme.secondary,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                      const SizedBox(height: 25),

                Text(
                  AppLocalizations.of(context)!.preferences,
                  style: TextStyle(
                    color: AppColors.secondaryText,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 12),

                /// ===============================
                /// MODE SOMBRE
                /// ===============================
                Container(
                  width: double.infinity,
                  height: 65,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceContainer,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        blurRadius: 8,
                        spreadRadius: 1,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.primary.withOpacity(0.10),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.dark_mode_outlined,
                          color: AppColors.primary,
                          size: 23,
                        ),
                      ),

                      const SizedBox(width: 12),

                       Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.dark_mode,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            SizedBox(height: 2),

                            Text(
                              AppLocalizations.of(context)!.dark_mode_description,
                              style: TextStyle(
                                color: AppColors.secondaryText,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),

                      /// Tu géreras la valeur plus tard
                      Switch(
                        value: false,
                        activeColor: AppColors.primary,
                        onChanged: (value) {
                          // Logique du thème ici plus tard
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  height: 65,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceContainer,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        blurRadius: 8,
                        spreadRadius: 1,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.primary.withOpacity(0.10),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.language_outlined,
                          color: AppColors.primary,
                          size: 23,
                        ),
                      ),

                      const SizedBox(width: 12),

                       Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.language,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            SizedBox(height: 2),

                            Text(
                              AppLocalizations.of(context)!.language_options,
                              style: TextStyle(
                                color: AppColors.secondaryText,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),

                      /// Toggle langue
                      Switch(
                        value: false,
                        activeColor: AppColors.primary,
                        onChanged: (value) {
                          // Logique de changement de langue ici plus tard
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                         GestureDetector(
                           onTap:(){},
                           child:Container(
                             width: MediaQuery.of(context).size.width,
                             height:58,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(15),
                               color: Color(0xFFFECACA),
                               border: Border.all(width: 1,color:AppColors.error)
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                  Icon(Icons.logout,size:24,color: AppColors.error,),
                                 SizedBox(width:10,),
                                 Text(
                                   AppLocalizations.of(context)!.logout,
                                   style: TextStyle(
                                     color: AppColors.error,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 16,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                          SizedBox(height: 45,),
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