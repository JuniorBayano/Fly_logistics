import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/Theme/app_colors.dart';
import '../../../core/constant/app_constants.dart';
import '../../../core/localization/generated/app_localizations.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/auth_text_field.dart';



class LoginScreen extends ConsumerStatefulWidget{
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen>{
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
                          children: [
                            Image.asset(
                                "assets/images/car.png",
                              width:MediaQuery.of(context).size.width*0.3,
                              color:AppColors.primary,
                            ),
                            Text(
                              AppConstants.appName,
                              style:TextStyle(fontSize:24,fontWeight: FontWeight.bold,color:AppColors.primaryTextLight),
                            ),
                            Text(
                              AppLocalizations.of(context)!.welcome,
                              style:TextStyle(fontSize:16,fontWeight: FontWeight.w600,color:AppColors.secondaryText),
                            ),
                            SizedBox(height: 10,),
                            Image.asset(
                              "assets/images/container.png",
                              width:MediaQuery.of(context).size.width*0.8,
                            ),
                            SizedBox(height: 10,),
                            AuthTextField(
                              label: AppLocalizations.of(context)!.mailOrPhoneNumber,
                              hintText: "tsafackjunior@gmail.com.",
                              icon: Icons.person,
                            ),AuthTextField(
                              label: AppLocalizations.of(context)!.password,
                              hintText: "..............",
                              icon: Icons.mail,
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(value: false, onChanged: (value){},hoverColor:AppColors.secondaryText,),
                                Flexible(child:Text(
                                  AppLocalizations.of(context)!.remindMe,
                                  style:TextStyle(fontSize:14,fontWeight: FontWeight.bold,color:AppColors.secondaryText),
                                  textAlign: TextAlign.start,
                                ))
                              ],
                            ),
                            SizedBox(height: 10,),
                            AppButton(text:AppLocalizations.of(context)!.register, onPressed: (){}),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(child:RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: AppLocalizations.of(context)!.haveAccount,
                                        style: TextStyle(
                                          color: AppColors.secondaryText,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: AppLocalizations.of(context)!.contactAdmin,
                                        style: TextStyle(
                                          color: AppColors.primary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                  )
              )
            ],
          )
      ) ,
    );

}


}