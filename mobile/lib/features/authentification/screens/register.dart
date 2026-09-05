import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fly_logistics/core/Theme/app_colors.dart';
import 'package:fly_logistics/core/constant/app_constants.dart';
import 'package:fly_logistics/shared/widgets/app_button.dart';
import '../../../l10n/app_localizations.dart';
import '../../../shared/widgets/auth_text_field.dart';


class RegisterScreen extends ConsumerStatefulWidget{
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState()=> RegisterScreenState();
}


class RegisterScreenState extends ConsumerState<RegisterScreen>{

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
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor:Theme.of(context).scaffoldBackgroundColor,
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
                            SvgPicture.asset(
                              "assets/images/car.svg",
                              width:MediaQuery.of(context).size.width*0.3,
                              color:AppColors.primary,
                            ),
                            Text(
                                AppConstants.appName,
                              style:TextStyle(fontSize:24,fontWeight: FontWeight.bold,color:Theme.of(context).colorScheme.secondary),
                            ),
                            Text(
                              AppLocalizations.of(context)!.createAccount,
                              style:TextStyle(fontSize:16,fontWeight: FontWeight.w600,color:Theme.of(context).colorScheme.onSecondary),
                            ),
                            AuthTextField(
                              label: AppLocalizations.of(context)!.fullName,
                              hintText: "Tsafack Junior",
                              icon: Icons.person,
                            ),AuthTextField(
                              label: AppLocalizations.of(context)!.email,
                              hintText: "tsafackjunior@gmail.com",
                              icon: Icons.mail,
                            ),AuthTextField(
                              label: AppLocalizations.of(context)!.phone_number,
                              hintText: "+237696954019",
                              icon: Icons.phone,
                            ),AuthTextField(
                              label: AppLocalizations.of(context)!.password,
                              hintText: "........",
                              icon: Icons.lock,
                            ),AuthTextField(
                              label: AppLocalizations.of(context)!.confirm_password,
                              hintText: "........",
                              icon: Icons.check_circle,
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Checkbox(
                                    value: true,
                                    onChanged: (value){},
                                    checkColor:AppColors.primary ,
                                    activeColor:AppColors.secondary
                                ),
                                Flexible(
                                    child:RichText(
                                    text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: AppLocalizations.of(context)!.agree_condition,
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
                            SizedBox(height: 10,),
                            AppButton(text:AppLocalizations.of(context)!.inscription, onPressed: (){}),
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
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      TextSpan(
                                        text: AppLocalizations.of(context)!.register,
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
