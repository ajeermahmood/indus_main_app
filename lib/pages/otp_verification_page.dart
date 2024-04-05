import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/otp_verfication_controller.dart';
import 'package:indus_app/widgets/button_widgets.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationPage extends GetView<OtpVerificationController> {
  const OtpVerificationPage({Key? key}) : super(key: key);

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
            controller.focusNodeOtp.unfocus();
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
                height: height / 1.7 - (appBar.preferredSize.height + 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Enter ',
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
                                  text: 'verification code 🔒',
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
                          'Enter 5 digit code sent to your email.',
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
                    SizedBox(
                      width: width,
                      child: Center(
                        child: Pinput(
                          controller: controller.otpController,
                          focusNode: controller.focusNodeOtp,
                          length: 4,
                          defaultPinTheme: PinTheme(
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Theme.of(context).colorScheme.surface,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 3,
                      height: 40,
                      child: Card(
                        margin: EdgeInsets.zero,
                        color: Theme.of(context).colorScheme.surface,
                        elevation: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              FeatherIcons.clock,
                              size: 20,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            const SizedBox(width: 10),
                            Obx(
                              () => Text(
                                '00:${controller.start.value.toString().length == 1 ? '0${controller.start.value}' : controller.start.value}',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Did\'t receive OTP? ',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                          InkWell(
                            onTap: controller.start.value == 0 ? () {} : null,
                            child: Text(
                              'Resend it',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                    color: controller.start.value == 0
                                        ? Theme.of(context).colorScheme.primary
                                        : Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width,
                      height: 55,
                      child: CustomButtonWidget02(
                        onTap: () {},
                        title: 'Submit',
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
