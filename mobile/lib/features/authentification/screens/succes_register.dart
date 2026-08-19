import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fly_logistics/core/Theme/app_colors.dart';
import 'package:fly_logistics/core/localization/generated/app_localizations.dart';


class SuccesRegister extends StatelessWidget{
  const SuccesRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.primary,
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Center(child: SvgPicture.asset("assets/images/success.svg",)),
                Text(AppLocalizations.of(context)!.success,style: TextStyle(fontWeight: FontWeight.bold,fontSize:30,color:AppColors.backgroundLight),),
                Text(AppLocalizations.of(context)!.nowConnect,style: TextStyle(fontWeight: FontWeight.bold,fontSize:16,color:AppColors.secondary),),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.backgroundLight,
                  foregroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: (){},
                child: Text(
                  AppLocalizations.of(context)!.continu,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}