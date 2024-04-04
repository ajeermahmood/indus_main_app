import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/sign_in_page_controller.dart';

class SignInPage extends GetView<SignInPageController> {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: GestureDetector(
        onTap: () {
          controller.focusNode.unfocus();
        },
        child: Container(
          color: Theme.of(context).colorScheme.onSurface,
          width: width,
          height: height,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Let\'s ',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      TextSpan(
                          text: 'sign in 👍',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontWeight: FontWeight.w800,
                              )),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Use Credentials to access your account',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const SizedBox(height: 30),
                TextFormWidget(
                  controller: controller.emailController,
                  focusNode: controller.focusNode,
                  hintText: 'Enter Email',
                  isPrefixIcon: true,
                  isSuffixIcon: false,
                  prefixIcon: FeatherIcons.mail,
                  isPassword: false,
                ),
                const SizedBox(height: 20),
                TextFormWidget(
                  controller: controller.passwordController,
                  focusNode: controller.focusNode,
                  hintText: 'Enter Password',
                  isPrefixIcon: true,
                  isSuffixIcon: false,
                  prefixIcon: FeatherIcons.mail,
                  isPassword: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TextFormWidget extends StatelessWidget {
  TextFormWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.isPrefixIcon,
    required this.isSuffixIcon,
    required this.isPassword,
    required this.focusNode,
    this.prefixIcon,
    this.suffixIcon,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final bool isPrefixIcon;
  final bool isSuffixIcon;
  final bool isPassword;

  IconData? prefixIcon;
  IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      focusNode: focusNode,
      controller: controller,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.w400,
          ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.w400,
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        prefixIcon: isPrefixIcon ? Icon(prefixIcon) : null,
        suffixIcon: isSuffixIcon ? Icon(suffixIcon) : null,
      ),
    );
  }
}
