import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fly_logistics/shared/widgets/app_button.dart';

import '../../../core/Theme/app_colors.dart';
import '../../../shared/widgets/custom_header.dart';

class TrackingScreenDetail extends ConsumerStatefulWidget {
  const TrackingScreenDetail({super.key});

  @override
  ConsumerState<TrackingScreenDetail> createState()=>TrackingScreenDetailState();
}

class TrackingScreenDetailState extends ConsumerState<TrackingScreenDetail>{

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
                    child: Padding(padding:EdgeInsetsGeometry.all(10),
                      child: Column(
                        children: [
                          CustomHeader(
                            title: "Détails de l'expedition",

                            leftIcon: Icons.arrow_back,

                            rightIcon: Icons.more_vert,

                            onLeftPressed: () {
                              Navigator.pop(context);
                            },
                            onRightPressed: () {},
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 392,
                            width: MediaQuery.of(context).size.width*0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:Column(
                              children: [
                                Container(
                                  height: 184,
                                  width: MediaQuery.of(context).size.width*0.7,
                                  child: Image.asset(""),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    CircleAvatar(radius:4,backgroundColor:AppColors.primary,),
                                    Text("EN TRANSIT",style: TextStyle(fontSize:14,fontWeight: FontWeight.w500,color: AppColors.primary),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Colis",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: AppColors.backgroundDark),),
                                    Text("#FLY-9842-TX",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: AppColors.backgroundDark),),
                                  ],
                                ),
                                Text("Description: Électronique & Composants PC",style: TextStyle(fontSize:16,fontWeight: FontWeight.w500,color: AppColors.secondaryText),),
                                AppButton(text:"Payer / Uploader preuve", onPressed:(){}),
                                Container(
                                  height: 188,
                                  width: MediaQuery.of(context).size.width*0.8,
                                  child: Column(children: [
                                   Row(
                                     children: [

                                     ],
                                   ),
                                    Row(
                                      children: [

                                      ],
                                    )
                                  ],),
                                )

                              ],
                            ),
                          )
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