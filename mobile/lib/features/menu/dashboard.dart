import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/Theme/app_colors.dart';
import '../../l10n/app_localizations.dart';
import '../../shared/widgets/app_bottom_nav_bar.dart';

class DashboardSCreen extends ConsumerStatefulWidget{
  DashboardSCreen ({super.key});

  @override
  ConsumerState<DashboardSCreen> createState()=>DashboardSCreenState();
}

class DashboardSCreenState extends ConsumerState<DashboardSCreen>{
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController=PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).scaffoldBackgroundColor,
      body:SafeArea(
        bottom: false,
          child: Column(
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  child:Padding(
                      padding: EdgeInsetsGeometry.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 73,
                              width: MediaQuery.of(context).size.width,
                              child:Row (
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.1,
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.green,
                                      child: ClipOval(
                                        child: Image.asset(
                                          "assets/images/profile.jpeg",
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.65,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Salut 👋",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color:AppColors.secondaryText),),
                                        Text("Tsafack Junior",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),)
                                      ],
                                    ),
                                  ),
                                  // Container(
                                  //   width: MediaQuery.of(context).size.width*0.1,
                                  //   child: GestureDetector(
                                  //     onTap: (){},
                                  //     child:CircleAvatar(
                                  //       backgroundColor: AppColors.secondary,
                                  //       radius:20,
                                  //       child: Icon(Icons.search_rounded,size:24,color:AppColors.backgroundDark,),
                                  //     ) ,
                                  //   ),
                                  // )
                                ],
                              ) ,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(10),
                              height: 138,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.primary,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(AppLocalizations.of(context)!.appName,style: TextStyle(fontWeight:FontWeight.bold,fontSize:28,color: AppColors.backgroundLight),),
                                  Text(AppLocalizations.of(context)!.followPackage,style: TextStyle(fontWeight:FontWeight.w400,fontSize:14,color: AppColors.secondary),),
                                ],
                              ),
                            ),
                            SizedBox(height: 18,),
                            Text(AppLocalizations.of(context)!.summaryActivity,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  height:130,
                                  width: MediaQuery.of(context).size.width*0.42,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(width: 1.5,color:AppColors.secondary),
                                      color: Theme.of(context).colorScheme.surfaceContainer
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/Overlay.svg",
                                        width: 40,
                                        height: 40,
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        AppLocalizations.of(context)!.transit,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context).colorScheme.secondary,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Spacer(),
                                      Text(
                                        "12 ${AppLocalizations.of(context)!.activePackage}",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryText,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  height:130,
                                  width: MediaQuery.of(context).size.width*0.42,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(width: 1.5,color:AppColors.secondary),
                                      color: Theme.of(context).colorScheme.surfaceContainer
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/check.svg",
                                        width: 40,
                                        height: 40,
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        AppLocalizations.of(context)!.delivery,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context).colorScheme.secondary,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Spacer(),
                                      Text(
                                        "85 ${AppLocalizations.of(context)!.finish}",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryText,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height:106,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(width: 1.5,color:AppColors.secondary),
                                  color: Theme.of(context).colorScheme.surfaceContainer
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                         AppLocalizations.of(context)!.followCourses,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context).colorScheme.secondary,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          "${AppLocalizations.of(context)!.finish}(ex: FLY-8829)",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.secondaryText,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    GestureDetector(
                                      onTap: (){},
                                      child: Container(
                                        width: 22,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          color: AppColors.primary,
                                          borderRadius: BorderRadius.circular(4)
                                        ),
                                        child: Icon(Icons.arrow_forward_rounded,color: AppColors.backgroundLight,size:18,),
                                      ),
                                    )

                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(AppLocalizations.of(context)!.recentSms,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.secondary,),textAlign: TextAlign.start,),
                                TextButton(
                                  onPressed: () {},
                                  child:Text(
                                    AppLocalizations.of(context)!.allViews,
                                    style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,)
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 94,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  width: 1,
                                  color: AppColors.secondary,
                                ),
                                  color: Theme.of(context).colorScheme.surfaceContainer
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/pack.svg",
                                    width: 40,
                                    height: 40,
                                  ),

                                  const SizedBox(width: 15),

                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)!.recentSms,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context).colorScheme.secondary,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Spacer(),
                                            Text(
                                              "14:30",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.secondaryText,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),

                                        const SizedBox(height: 4),

                                        Text(
                                          AppLocalizations.of(context)!.subPreparePackage,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.secondaryText,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 94,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  width: 1,
                                  color: AppColors.secondary,
                                ),
                                  color: Theme.of(context).colorScheme.surfaceContainer
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/location.svg",
                                    width: 40,
                                    height: 40,
                                  ),
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)!.arriveCenter,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context).colorScheme.secondary,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Spacer(),
                                            Text(
                                              "Hier",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.secondaryText,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          AppLocalizations.of(context)!.subArriveCenter,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.secondaryText,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                  ),
                )))
              ],
          )
      ),
    );
  }
}