import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/fill_user_info_controller.dart';
import 'package:indus_app/routes/app_routes.dart';
import 'package:indus_app/widgets/button_widgets.dart';

enum UserRole { owner, agent, developer }

class FillUserInfoPage extends GetView<FillUserInfoController> {
  const FillUserInfoPage({Key? key}) : super(key: key);

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
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 20,
              right: 20.0,
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'What is your ',
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
                                text: 'role?',
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
                        'Please select your role.',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      const SizedBox(height: 30),
                      // Radio(
                      //   value: controller.userRole.value,
                      //   groupValue: groupValue,
                      //   onChanged: onChanged,
                      // )
                    ],
                  ),
                ),
                SizedBox(
                  width: width,
                  height: 55,
                  child: CustomButtonWidget02(
                    onTap: () {},
                    title: 'Next',
                    isIcon: false,
                    isDisabled: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
