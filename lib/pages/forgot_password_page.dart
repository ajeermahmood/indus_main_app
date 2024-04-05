import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/forgot_password_page_controller.dart';
import 'package:indus_app/routes/app_routes.dart';
import 'package:indus_app/widgets/button_widgets.dart';
import 'package:indus_app/widgets/textformfield_widget.dart';

class ForgotPasswordPage extends GetView<ForgotPasswordPageController> {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    AppBar appBar = AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            FeatherIcons.chevronLeft,
            size: 30,
          )),
    );
    return Scaffold(
      appBar: appBar,
      body: Container(
        color: Theme.of(context).colorScheme.onSurface,
        width: width,
        height: height - appBar.preferredSize.height,
        child: GestureDetector(
          onTap: () {
            controller.focusNodeMail.unfocus();
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 20,
                right: 20.0,
                left: 20,
              ),
              child: SizedBox(
                height: height / 2.1 - (appBar.preferredSize.height + 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Forgot ',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              TextSpan(
                                  text: 'password 🔒',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        fontWeight: FontWeight.w800,
                                      )),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Send OTP to your registered email address.',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ],
                    ),
                    TextFormWidget(
                      controller: controller.emailController,
                      focusNode: controller.focusNodeMail,
                      hintText: 'Enter Email',
                      isPrefixIcon: true,
                      isSuffixIcon: false,
                      prefixIcon: FeatherIcons.mail,
                      isPassword: false,
                    ),
                    SizedBox(
                      width: width,
                      height: 55,
                      child: CustomButtonWidget02(
                        onTap: () {
                          Get.offAndToNamed(AppRoutes.otpVerify);
                        },
                        title: 'Send OTP',
                        isIcon: false,
                        isDisabled: false,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
