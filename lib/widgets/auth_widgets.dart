// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indus_app/routes/app_routes.dart';
import 'package:indus_app/widgets/button_widgets.dart';

// ignore: must_be_immutable
class OrLoginWithWidget extends StatelessWidget {
  OrLoginWithWidget({
    super.key,
    required this.width,
    required this.height,
    required this.isIcon,
    required this.buttonText,
    required this.onTap,
    required this.isDisabled,
    required this.isSignUpPage,
    this.icon,
  });

  final double width;
  final double height;
  final bool isIcon;
  final String buttonText;
  final void Function()? onTap;
  final bool isDisabled;
  final bool isSignUpPage;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: width,
            height: 55,
            child: CustomButtonWidget02(
              onTap: onTap,
              title: buttonText,
              isIcon: isIcon,
              icon: icon,
              isDisabled: isDisabled,
            ),
          ),
          Row(
            children: [
              const Expanded(
                child: Divider(
                  thickness: 2,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Or Login With',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
              ),
              const Expanded(
                child: Divider(
                  thickness: 2,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomIconButtonWidget(
                  icon: Image.asset(
                    'assets/images/google-logo.png',
                    width: 35,
                  ),
                  onTap: () {},
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomIconButtonWidget(
                  icon: Image.asset(
                    'assets/images/fb-logo.png',
                    width: 35,
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isSignUpPage
                    ? "Already have an account? "
                    : 'Don\'t have an account? ',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              InkWell(
                onTap: () {
                  Get.offAndToNamed(
                      isSignUpPage ? AppRoutes.signIn : AppRoutes.signUp);
                },
                child: Text(
                  isSignUpPage ? "Login" : 'Register',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
