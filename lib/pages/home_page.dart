import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/home_page_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return controller.obx(
      (state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Featuring Projects',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 1.03,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              onPageChanged: (index, reason) {
                controller.bannerIndex(index);
              },
            ),
            items: controller.bannersList.map(
              (banner) {
                var index = controller.bannersList.indexOf(banner);
                return Obx(
                  () => Card(
                    color: controller.bannerIndex.value == index
                        ? Theme.of(context).colorScheme.surface
                        : Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: height / 3,
                          child: Image.network(
                            fit: BoxFit.fill,
                            banner.image,
                            loadingBuilder: (context, child, loadingProgress) {
                              return loadingProgress == null &&
                                      controller.showBanners.value == true
                                  ? child
                                  : SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: height / 3,
                                      child: Shimmer.fromColors(
                                        baseColor: const Color.fromARGB(
                                            255, 190, 190, 190),
                                        highlightColor: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        child: Container(
                                          height: height / 3,
                                          color: Colors.white,
                                        ),
                                      ),
                                    );
                            },
                          ),
                        ),
                        controller.bannerIndex.value == index
                            ? Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 20),
                                child: Column(
                                  children: [
                                    Text(
                                      banner.title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      banner.subtitle,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                    )
                                  ],
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                );
              },
            ).toList(),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Top Communities',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
