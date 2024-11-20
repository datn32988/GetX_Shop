import 'package:chodotot_getx/Page/Search/SeachWidget.dart';
import 'package:chodotot_getx/Page/widget/NewTitle.dart';
import 'package:flutter/material.dart';

class AddproductPage extends StatelessWidget {
  const AddproductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const SeachWidget(),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Newtitle(
                    ontap: () {},
                    imageUrl:
                        'https://media.istockphoto.com/id/1602458519/photo/colorful-powder-explosion-on-white-background.jpg?s=612x612&w=0&k=20&c=qP4wiTwHShIIIi4pfx2EDO-ynQ1rnt3meO2o3K47n9A=',
                    title: '65,531,800+ Color Image Stock Photos, Pictures',
                    time: '2 dat ago',
                    description: '123',
                    author: 'Zuy dat',
                  ),
                  Newtitle(
                    ontap: () {},
                    imageUrl:
                        'https://t4.ftcdn.net/jpg/07/22/97/85/360_F_722978590_gU9ZcHW6zsLiNPUzRRLsrtT2PNOo7Lfk.jpg',
                    title: '65,531,800+ Color Image Stock Photos, Pictures',
                    time: '2 dat ago',
                    description: '123',
                    author: 'Zuy dat',
                  ),
                  Newtitle(
                    ontap: () {},
                    imageUrl:
                        'https://thumbs.dreamstime.com/b/white-bucket-colorful-rainbow-color-paint-splashes-isolated-background-creative-diy-handyman-renovation-concept-splash-117751266.jpg',
                    title: '65,531,800+ Color Image Stock Photos, Pictures',
                    time: '2 dat ago',
                    description: '123',
                    author: 'Zuy dat',
                  ),
                  Newtitle(
                    ontap: () {},
                    imageUrl:
                        'https://media.istockphoto.com/id/1602458519/photo/colorful-powder-explosion-on-white-background.jpg?s=612x612&w=0&k=20&c=qP4wiTwHShIIIi4pfx2EDO-ynQ1rnt3meO2o3K47n9A=',
                    title: '65,531,800+ Color Image Stock Photos, Pictures',
                    time: '2 dat ago',
                    description: '123',
                    author: 'Zuy dat',
                  ),
                  Newtitle(
                    ontap: () {},
                    imageUrl:
                        'https://t4.ftcdn.net/jpg/07/22/97/85/360_F_722978590_gU9ZcHW6zsLiNPUzRRLsrtT2PNOo7Lfk.jpg',
                    title: '65,531,800+ Color Image Stock Photos, Pictures',
                    time: '2 dat ago',
                    description: '123',
                    author: 'Zuy dat',
                  ),
                  Newtitle(
                    ontap: () {},
                    imageUrl:
                        'https://thumbs.dreamstime.com/b/white-bucket-colorful-rainbow-color-paint-splashes-isolated-background-creative-diy-handyman-renovation-concept-splash-117751266.jpg',
                    title: '65,531,800+ Color Image Stock Photos, Pictures',
                    time: '2 dat ago',
                    description: '123',
                    author: 'Zuy dat',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
