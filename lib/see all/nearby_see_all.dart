import 'dart:ui';

import 'package:booking_hotel/detail_page/detail_hotel_nearby.dart';
import 'package:booking_hotel/list_proprety.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../main app/home_page.dart';

class NearbySeeAll extends StatefulWidget {
  const NearbySeeAll({super.key});

  @override
  State<NearbySeeAll> createState() => _NearbySeeAllState();
}

class _NearbySeeAllState extends State<NearbySeeAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        margin: EdgeInsets.only(
          top: 40,
          left: 20,
        ),
        height: 48,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: Colors.white)),
            const SizedBox(
              width: 70,
            ),
            const Text(
              "See all nearby locations",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Expanded(
        child: SizedBox(
          width: 450,
          height: 470,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: nearby.length,
              itemBuilder: (context, index) {
                NearbyLocation near = nearby[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailHotelNearby(nearby: near)));
                  },
                  child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(5, 0),
                            blurRadius: 5,
                            blurStyle: BlurStyle.normal,
                            color: Colors.white,
                          ),
                          BoxShadow(
                              offset: Offset(-5, 0),
                              blurRadius: 10,
                              blurStyle: BlurStyle.normal,
                              color: mainColor)
                        ],
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: near.mainImage.image),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 35,
                            child: Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 10,
                                          sigmaY: 10,
                                        ),
                                        child: Container(
                                          width: 120,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(0.6),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const Icon(Iconsax.location),
                                              Text(
                                                near.adress,
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ))),
                                const SizedBox(
                                  width: 50,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              bottom: 5,
                              left: 4.5,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 5,
                                    sigmaY: 5,
                                  ),
                                  child: Container(
                                    height: 100,
                                    width: 180,
                                    decoration: BoxDecoration(
                                        color: mainColor.withOpacity(0.5),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(50),
                                          bottomRight: Radius.circular(50),
                                        )),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          near.name,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          "\$${near.price}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                          Positioned(
                              bottom: 90,
                              left: 10,
                              child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.6),
                                    shape: BoxShape.circle,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        near.isLike = !near.isLike;
                                      });
                                    },
                                    child: near.isLike == false
                                        ? const Icon(
                                            Iconsax.heart,
                                            color: Colors.black,
                                          )
                                        : const Icon(
                                            Iconsax.heart5,
                                            color: Colors.pink,
                                          ),
                                  ))),
                        ],
                      )),
                );
              }),
        ),
      ),
    ]));
  }
}
