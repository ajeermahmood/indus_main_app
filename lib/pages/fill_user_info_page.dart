import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/fill_user_info_controller.dart';
import 'package:indus_app/routes/app_routes.dart';
import 'package:indus_app/widgets/button_widgets.dart';
import 'package:indus_app/widgets/textformfield_widget.dart';

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
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 35.0, right: 5, bottom: 5),
        child: SizedBox(
          width: width,
          height: 55,
          child: Obx(
            () => CustomButtonWidget02(
              onTap: () {
                if (controller.currentIndex.value < 2) {
                  controller.currentIndex.value++;
                } else {
                  Get.offAllNamed(AppRoutes.base);
                }
              },
              title: controller.currentIndex.value < 2 ? 'Next' : 'Finish',
              isIcon: false,
              isDisabled: false,
            ),
          ),
        ),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.onSurface,
        width: width,
        height: height - appBar.preferredSize.height,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 20,
            right: 20.0,
            left: 20,
          ),
          child: Obx(
            () => AnimatedSwitcher(
              switchInCurve: Curves.easeIn,
              switchOutCurve: Curves.easeOut,
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (child, animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.2, 0),
                    end: const Offset(0, 0),
                  ).animate(animation),
                  child: FadeTransition(
                    opacity: animation,
                    child: child,
                  ),
                );
              },
              child: controller.currentIndex.value == 0
                  ? UserInfoRoleWidget(controller: controller)
                  : controller.currentIndex.value == 1
                      ? UserInfoPropertyTypeWidget(controller: controller)
                      : UserInfoProfileWidget(controller: controller),
            ),
          ),
        ),
      ),
    );
  }
}

class UserInfoProfileWidget extends StatelessWidget {
  const UserInfoProfileWidget({
    super.key,
    required this.controller,
  });

  final FillUserInfoController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          controller.focusNodeName.unfocus();
          controller.focusNodePhone.unfocus();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Fill your ',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  TextSpan(
                      text: 'information 👇',
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontWeight: FontWeight.w800,
                              )),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Set your profile here',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 70,
                      child: Icon(
                        FeatherIcons.image,
                        size: 60,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .background
                              .withOpacity(1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton.outlined(
                          onPressed: () {},
                          icon: Icon(
                            FeatherIcons.upload,
                            size: 20,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                TextFormWidget(
                  controller: controller.nameController,
                  focusNode: controller.focusNodeName,
                  hintText: 'Enter Name',
                  isPrefixIcon: true,
                  isSuffixIcon: false,
                  prefixIcon: FeatherIcons.user,
                  isPassword: false,
                ),
                const SizedBox(height: 20),
                TextFormWidget(
                  controller: controller.phoneController,
                  focusNode: controller.focusNodePhone,
                  hintText: 'Enter Contact Number',
                  isPrefixIcon: true,
                  isSuffixIcon: false,
                  prefixIcon: FeatherIcons.phone,
                  isPassword: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UserInfoPropertyTypeWidget extends StatelessWidget {
  const UserInfoPropertyTypeWidget({
    super.key,
    required this.controller,
  });

  final FillUserInfoController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Select your preferable ',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              TextSpan(
                  text: 'real estate type 🏡',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.w800,
                      )),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Choose your property type.',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.w400,
              ),
        ),
        const SizedBox(height: 30),
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Obx(
                () => GestureDetector(
                  onTap: () {
                    if (!controller.selectedGridPropTypes.contains(index)) {
                      controller.selectedGridPropTypes.add(index);
                    } else {
                      controller.selectedGridPropTypes.remove(index);
                    }
                  },
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 160,
                    child: Card(
                      elevation: 0,
                      color: controller.selectedGridPropTypes.contains(index)
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.background,
                      margin: EdgeInsets.zero,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  width: double.maxFinite,
                                  height: 130,
                                  child: Image.asset(
                                    'assets/images/prop-type-grid/${controller.gridPropTypes[index]["img"]}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                controller.selectedGridPropTypes.contains(index)
                                    ? Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          FeatherIcons.checkCircle,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface,
                                          size: 30,
                                        ),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                            Text(
                              controller.gridPropTypes[index]["title"],
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: controller.selectedGridPropTypes
                                            .contains(index)
                                        ? Theme.of(context)
                                            .colorScheme
                                            .onSurface
                                        : Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 70),
      ],
    );
  }
}

class UserInfoRoleWidget extends StatelessWidget {
  const UserInfoRoleWidget({
    super.key,
    required this.controller,
  });

  final FillUserInfoController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'What is your ',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              TextSpan(
                  text: 'role?',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.w800,
                      )),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Please select your role.',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.w400,
              ),
        ),
        const SizedBox(height: 30),
        Obx(
          () => Column(
            children: [
              RadioListTile(
                value: UserRole.owner,
                groupValue: controller.userRole.value,
                onChanged: (value) {
                  controller.userRole(value);
                },
                title: Text(
                  'I am an owner',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                contentPadding: EdgeInsets.zero,
                activeColor: Theme.of(context).colorScheme.primary,
              ),
              RadioListTile(
                value: UserRole.agent,
                groupValue: controller.userRole.value,
                onChanged: (value) {
                  controller.userRole(value);
                },
                title: Text(
                  'I am an agent',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                contentPadding: EdgeInsets.zero,
                activeColor: Theme.of(context).colorScheme.primary,
              ),
              RadioListTile(
                value: UserRole.developer,
                groupValue: controller.userRole.value,
                onChanged: (value) {
                  controller.userRole(value);
                },
                title: Text(
                  'I am a property developer',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                contentPadding: EdgeInsets.zero,
                activeColor: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
