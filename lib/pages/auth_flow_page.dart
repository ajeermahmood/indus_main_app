import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/auth_flow_controller.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: CustomButtonWidget01(
              onTap: () {},
              title: 'Skip',
            ),
          ),
        ],
      ),
      body: Container(
        color: Theme.of(context).colorScheme.onSurface,
        width: width,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Find best place to stay in',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'good price',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
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
                        width: width / 3,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        width: width / 4,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  CustomButtonWidget02(
                    onTap: () {},
                    title: 'Next',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Expanded(
              child: Column(
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
                          'assets/images/dubai-01.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
