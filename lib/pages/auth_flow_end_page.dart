import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/auth_flow_controller.dart';
import 'package:indus_app/routes/app_routes.dart';
import 'package:indus_app/widgets/auth_widgets.dart';

class AuthFlowEndPage extends GetView<AuthFlowController> {
  const AuthFlowEndPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.onSurface,
        width: width,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                width: width,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  child: Image.asset(
                    'assets/images/auth-flow-04.webp',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SizedBox(
                width: width,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Ready to ',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            TextSpan(
                                text: 'explore? 🤚',
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
                      OrLoginWithWidget(
                        width: width,
                        height: height / 3,
                        buttonText: 'Continue with Email',
                        isIcon: true,
                        icon: FeatherIcons.mail,
                        onTap: () {
                          Get.toNamed(AppRoutes.signIn);
                        },
                        isDisabled: false,
                        isSignUpPage: false,
                      ),
                    ],
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
