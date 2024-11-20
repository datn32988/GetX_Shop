import 'package:chodotot_getx/Controller/ProductController.dart';
import 'package:chodotot_getx/Page/ProductDetial/ProductDetial.dart';
import 'package:chodotot_getx/Page/widget/NewTitle.dart';
import 'package:chodotot_getx/Page/widget/trandingcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      productController.getProductUser();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(Icons.dashboard),
                    ),
                  ),
                  const Text(
                    'CHODOTOT',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(Icons.person),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hottset Day',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    'See All',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(
                  () => Row(
                      children: productController.products
                          .map(
                            (e) => TrandingCard(
                                imageUrl: e.image,
                                tag: e.category,
                                time: e.category,
                                title: e.title,
                                author: e.category,
                                ontap: () {
                                  Get.to(ProductdetialsPage(
                                    news: e,
                                  ));
                                }),
                          )
                          .toList()),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New for you',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    'See All',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => Column(
                  children: productController.productForYou
                      .map((e) => Newtitle(
                          ontap: () {
                            Get.to(ProductdetialsPage(news: e));
                          },
                          imageUrl: e.image,
                          title: e.title,
                          time: e.category,
                          description: e.description,
                          author: e.category))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
