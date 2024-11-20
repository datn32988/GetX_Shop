import 'package:chodotot_getx/Controller/BottomNavigationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottonNav extends StatelessWidget {
  const MyBottonNav({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          width: 11,
        ),
        InkWell(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: 400,
            height: 60,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    controller.index.value = 0;
                  },
                  child: Obx(
                    () => AnimatedContainer(
                      duration: const Duration(microseconds: 300),
                      curve: Curves.bounceInOut,
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: controller.index.value == 0
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.home,
                          size: 25,
                          color: controller.index.value == 0
                              ? Theme.of(context).colorScheme.onPrimaryContainer
                              : Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.index.value = 1;
                  },
                  child: Obx(
                    () => AnimatedContainer(
                      duration: const Duration(microseconds: 300),
                      curve: Curves.bounceInOut,
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: controller.index.value == 1
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 25,
                          color: controller.index.value == 1
                              ? Theme.of(context).colorScheme.onPrimaryContainer
                              : Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.index.value = 2;
                  },
                  child: Obx(
                    () => AnimatedContainer(
                      duration: const Duration(microseconds: 300),
                      curve: Curves.bounceInOut,
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: controller.index.value == 2
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.search,
                          size: 25,
                          color: controller.index.value == 2
                              ? Theme.of(context).colorScheme.onPrimaryContainer
                              : Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.index.value = 3;
                  },
                  child: Obx(
                    () => AnimatedContainer(
                      duration: const Duration(microseconds: 300),
                      curve: Curves.bounceInOut,
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: controller.index.value == 3
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.settings,
                          size: 25,
                          color: controller.index.value == 3
                              ? Theme.of(context).colorScheme.onPrimaryContainer
                              : Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
