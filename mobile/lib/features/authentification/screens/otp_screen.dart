import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/Theme/app_colors.dart';
import '../../../l10n/app_localizations.dart';
import '../../../shared/widgets/app_button.dart';


class OtpScreen extends ConsumerStatefulWidget{
  const OtpScreen({super.key});

  @override
  ConsumerState <OtpScreen> createState()=>OtpScreenState();
}

class OtpScreenState extends ConsumerState<OtpScreen>{
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
        body:SafeArea(
            bottom: false,
            child: Column(
                children: [
                Expanded(
                child:SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20),
            child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Icon(Icons.lock_outline_rounded,color:AppColors.primary,size:MediaQuery.of(context).size.width*0.08)),
                      SizedBox(height: 15,),
                      Text(AppLocalizations.of(context)!.always,style:TextStyle(fontSize:20,fontWeight: FontWeight.bold,color:AppColors.primaryTextLight),),
                      Text(AppLocalizations.of(context)!.otpSend,style:TextStyle(fontSize:13,fontWeight: FontWeight.w300,color:AppColors.secondaryText),),
                      SizedBox(height:30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(4, (index) {
                          return Container(
                            width: 48,
                            height: 46,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.secondary,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 8,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Center(
                              child: TextField(
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  counterText: "",
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height:25,),
                      AppButton(text:AppLocalizations.of(context)!.verify, onPressed: (){}),
                    ]
                )
                )
            ))

                ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: IconButton(onPressed:(){}, icon:Icon(Icons.arrow_back_ios_rounded),iconSize:24),
                    ),
                  ),
        ]
    )));
  }
}