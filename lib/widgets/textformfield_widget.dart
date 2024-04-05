import 'package:flutter/material.dart';

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
    this.suffixIconOnTap,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final bool isPrefixIcon;
  final bool isSuffixIcon;
  final bool isPassword;

  IconData? prefixIcon;
  IconData? suffixIcon;
  void Function()? suffixIconOnTap;

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
        suffixIcon: isSuffixIcon
            ? InkWell(
                onTap: suffixIconOnTap,
                child: Icon(suffixIcon),
              )
            : null,
      ),
    );
  }
}
