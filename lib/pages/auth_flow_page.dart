import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/auth_flow_controller.dart';
import 'package:indus_app/routes/app_routes.dart';
import 'package:indus_app/widgets/button_widgets.dart';

class AuthFlowPage extends GetView<AuthFlowController> {
  const AuthFlowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        actions: [
          Obx(
            () => controller.currentPage.value >= 2
                ? const SizedBox()
                : Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20),
                    child: CustomButtonWidget01(
                      onTap: () {
                        Get.offAllNamed(AppRoutes.authFlowEnd);
                      },
                      title: 'Skip',
                    ),
                  ),
          ),
        ],
      ),
      body: Container(
        color: Theme.of(context).colorScheme.onSurface,
        width: width,
        height: height,
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: AnimatedSwitcher(
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
                  child: controller.currentPage.value == 0
                      ? ContentPartWidget(
                          controller: controller,
                          key: const ValueKey(0),
                          firstText: 'Find best place to stay in',
                          secondText: 'good price 😊',
                          thirdText:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                          width: width,
                        )
                      : controller.currentPage.value == 1
                          ? ContentPartWidget(
                              controller: controller,
                              key: const ValueKey(1),
                              firstText: 'Fast sell your property just',
                              secondText: 'one click 🤑',
                              thirdText:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                              width: width,
                            )
                          : ContentPartWidget(
                              controller: controller,
                              key: const ValueKey(2),
                              firstText: 'Find perfect choice for your',
                              secondText: 'future home 🏡',
                              thirdText:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                              width: width,
                            ),
                ),
              ),
              const SizedBox(height: 50),
              Expanded(
                child: AnimatedSwitcher(
                  switchInCurve: Curves.easeIn,
                  switchOutCurve: Curves.easeOut,
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder: (child, animation) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 1.2),
                        end: const Offset(0, 0),
                      ).animate(animation),
                      child: FadeTransition(
                        opacity: animation,
                        child: child,
                      ),
                    );
                  },
                  child: controller.currentPage.value == 0
                      ? ImagePartWidget(
                          width: width,
                          controller: controller,
                          key: const ValueKey(0),
                          image: 'auth-flow-01.webp',
                        )
                      : controller.currentPage.value == 1
                          ? ImagePartWidget(
                              width: width,
                              controller: controller,
                              key: const ValueKey(1),
                              image: 'auth-flow-02.webp',
                            )
                          : ImagePartWidget(
                              width: width,
                              controller: controller,
                              key: const ValueKey(2),
                              image: 'auth-flow-03.webp',
                            ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImagePartWidget extends StatelessWidget {
  const ImagePartWidget({
    super.key,
    required this.width,
    required this.controller,
    required this.image,
  });

  final double width;
  final AuthFlowController controller;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: SizedBox(
            width: width,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              child: Image.asset(
                'assets/images/$image',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ContentPartWidget extends StatelessWidget {
  const ContentPartWidget({
    super.key,
    required this.controller,
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    required this.width,
  });

  final AuthFlowController controller;
  final String firstText;
  final String secondText;
  final String thirdText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          firstText,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          secondText,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(right: 40.0),
          child: Text(
            thirdText,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ),
        const SizedBox(height: 20),
        Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Container(
              width: 120,
              height: 2,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            Container(
              width: controller.currentPage.value == 0
                  ? 120 / 4
                  : controller.currentPage.value == 1
                      ? 120 / 4 * 2
                      : 120 / 4 * 3,
              height: 4,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: width / 2,
          child: CustomButtonWidget02(
            onTap: () {
              controller.changePage();
            },
            title: controller.currentPage.value >= 2 ? 'Get Started' : 'Next',
            isIcon: false,
          ),
        ),
      ],
    );
  }
}
