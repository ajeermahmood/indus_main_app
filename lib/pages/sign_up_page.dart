import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/sign_up_page_controller.dart';
import 'package:indus_app/widgets/auth_widgets.dart';
import 'package:indus_app/widgets/textformfield_widget.dart';

class SignUpPage extends GetView<SignUpPageController> {
  const SignUpPage({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              controller.focusNodeMail.unfocus();
              controller.focusNodePass.unfocus();
            },
            child: Padding(
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 20,
                right: 20.0,
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height / 2 - (appBar.preferredSize.height - 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Create your ',
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
                                      text: 'account 👍',
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
                              'Welcome to Indus Real Estate LLC. Let\'s get started.',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ],
                        ),
                        TextFormWidget(
                          controller: controller.nameController,
                          focusNode: controller.focusNodeName,
                          hintText: 'Enter Name',
                          isPrefixIcon: true,
                          isSuffixIcon: false,
                          prefixIcon: FeatherIcons.user,
                          isPassword: false,
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
                        Obx(
                          () => TextFormWidget(
                            controller: controller.passwordController,
                            focusNode: controller.focusNodePass,
                            hintText: 'Enter Password',
                            isPrefixIcon: true,
                            isSuffixIcon: true,
                            prefixIcon: FeatherIcons.lock,
                            isPassword: controller.hidePassword.value,
                            suffixIcon: controller.hidePassword.value
                                ? FeatherIcons.eyeOff
                                : FeatherIcons.eye,
                            suffixIconOnTap: () {
                              controller.hidePassword.value =
                                  !controller.hidePassword.value;
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(
                              () => Checkbox(
                                value: controller.agreeTerms.value,
                                onChanged: (value) {
                                  controller.agreeTerms(value);
                                },
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                activeColor:
                                    Theme.of(context).colorScheme.primary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                side: BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  width: 1.5,
                                ),
                              ),
                            ),
                            Text(
                              'I agree with the ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'Terms & Conditions',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => OrLoginWithWidget(
                      width: width,
                      height: height / 2 - (appBar.preferredSize.height + 80),
                      buttonText: 'Register',
                      isIcon: false,
                      onTap: () {},
                      isDisabled: !controller.agreeTerms.value,
                      isSignUpPage: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
