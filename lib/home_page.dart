import 'package:booking_hotel/detail_hotel.dart';
import 'package:booking_hotel/navigation_bar.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectLocation = "Select location";
  List<String> listLocation = [
    "lohore,Pakistan",
    "Abidjan, CI",
    "Dakar,Senegal",
    "Paris,france",
    "New York,USA",
  ];
  int searchProperty = 0;
  List<NearbyLocation> nearby = [
    NearbyLocation(
        name: "The luxury hotel with pool",
        mainImage: Image.asset("assets/images/Cabecera_M.jpg"),
        price: "200",
        adress: "Lohore, Pakistan",
        rating: 4.5,
        isLike: false,
        isFavourite: false,
        isWifi: true,
        isbreastFast:false,
        description:
        "The luxury hotel with pool Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
        imagePreview: [
          Image.asset("assets/images/Cabecera_M.jpg"),
          Image.asset("assets/images/Cabecera_M.jpg"),
          Image.asset("assets/images/Cabecera_M.jpg"),
          Image.asset("assets/images/Cabecera_M.jpg"),
        ]),
    NearbyLocation(
        name: "The luxury residence with pool",
        mainImage: Image.asset("assets/images/madbookies.jpg"),
        price: " 300",
        adress: "abidjan,CI",
        isLike: true,
        rating: 4.5,
        isFavourite: false,
        isWifi: false,
        isbreastFast: true,
        description:
            "The luxury residence with pool Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
        imagePreview: [
          Image.asset("assets/images/madbookies.jpg"),
          Image.asset("assets/images/madbookies.jpg"),
          Image.asset("assets/images/madbookies.jpg"),
          Image.asset("assets/images/madbookies.jpg"),
        ]),
    NearbyLocation(
        name: "The palace with pool",
        mainImage: Image.asset("assets/images/Palace5.jpg"),
        price: " 1000",
        adress: "Dakar,senegal",
        isLike: false,
        rating: 3.0,
        isFavourite: false,
        isWifi: true,
        isbreastFast: true,
        description:  "The palace with pool .Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
       
        imagePreview: [
          Image.asset("assets/images/Palace5.jpg"),
          Image.asset("assets/images/Palace5.jpg"),
          Image.asset("assets/images/Palace5.jpg"),
          Image.asset("assets/images/Palace5.jpg"),
        ]),
    NearbyLocation(
        name: "The manoir with pool",
        mainImage: Image.asset("assets/images/hotels-luxe.jpg"),
        price: " 2000",
        adress: "dubai, UAE",
        isLike: true,
        rating: 4.5,
        isFavourite: false,
        isWifi: false,
        isbreastFast: true,
        description:  "The manoir with pool Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
       
        imagePreview: [
          Image.asset("assets/images/hotels-luxe.jpg"),
          Image.asset("assets/images/hotels-luxe.jpg"),
          Image.asset("assets/images/hotels-luxe.jpg"),
          Image.asset("assets/images/hotels-luxe.jpg"),
        ]),
    NearbyLocation(
        name: "The luxury with pool",
        mainImage: Image.asset("assets/images/05-The-Pa.jpg"),
        price: " 800",
        adress: "Lohore, Pakistan",
        isLike: false,
        rating: 4.7,
        isFavourite: false,
        isWifi: true,
        isbreastFast: true,
        description:  "The luxury with pool Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
       
        imagePreview: [
          Image.asset("assets/images/05-The-Pa.jpg"),
          Image.asset("assets/images/05-The-Pa.jpg"),
          Image.asset("assets/images/05-The-Pa.jpg"),
          Image.asset("assets/images/05-The-Pa.jpg"),
        ]),
  ];

  List<PopularLocation> popular = [
    PopularLocation(
        name: "Lahore hotel",
        mainImage: Image.asset("assets/images/1518365.jpg"),
        price: " 199.9",
        adress: "westhal, PK",
        rating: 5.0,
        isFavourite: false,
        isWifi: true,
        isbreastFast: true,
        description:  "Lahore hotel Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
       
        imagePreview: [
          Image.asset("assets/images/1518365.jpg"),
          Image.asset("assets/images/1518365.jpg"),
          Image.asset("assets/images/1518365.jpg"),
          Image.asset("assets/images/1518365.jpg"),
        ]),
    PopularLocation(
        name: "Abidjan hotel",
        mainImage: Image.asset("assets/images/Slide-2.jpg"),
        price: " 300",
        adress: "new york, USA",
        rating: 5.0,
        isFavourite: false,
        isWifi: true,
        isbreastFast: true,
        description:  "Abidjan hotel Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
       
        imagePreview: [
          Image.asset("assets/images/Slide-2.jpg"),
          Image.asset("assets/images/Slide-2.jpg"),
          Image.asset("assets/images/Slide-2.jpg"),
          Image.asset("assets/images/Slide-2.jpg"),
        ]),
    PopularLocation(
        name: "Bassam hotel",
        mainImage:
            Image.asset("assets/images/type de chambre par agencement.webp"),
        price: " 400",
        adress: "Bassam,CI",
        rating: 4.0,
        isFavourite: false,
        isWifi: true,
        isbreastFast: true,
        description:  "Bassam hotel Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
       
        imagePreview: [
          Image.asset("assets/images/type de chambre par agencement.webp"),
          Image.asset("assets/images/type de chambre par agencement.webp"),
          Image.asset("assets/images/type de chambre par agencement.webp"),
          Image.asset("assets/images/type de chambre par agencement.webp"),
        ]),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Colors.transparent,
                elevation: 10,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/images/easyStay.png"),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Row(children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current location",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Row(children: [
                          Icon(Iconsax.location5),
                          SizedBox(
                            height: 20,
                            width: 150,
                            child: DropdownButton(
                              borderRadius: BorderRadius.circular(12),
                              dropdownColor: Colors.white,
                              elevation: 10,
                              underline: const SizedBox(),
                              // style: theme.textTheme.bodyLarge,
                              icon: const Icon(
                                Icons.expand_circle_down_outlined,
                                color: Colors.black,
                              ),
                              hint: Text(
                                selectLocation,
                                // style: theme.textTheme.bodyLarge,
                                textAlign: TextAlign.justify,
                              ),
                              isExpanded: true,
                              items: listLocation
                                  .map((e) => DropdownMenuItem(
                                        enabled: true,
                                        value: e,
                                        child: Text(e),
                                      ))
                                  .toList(),
                              onChanged: (value) {
                                selectLocation = value as String;
                                setState(() {});
                              },
                            ),
                          ),
                        ]),
                      ]),
                  const Spacer(),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: const Offset(0, 0))
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Iconsax.notification),
                  ),
                ]),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Card(
                  elevation: 5,
                  child: TextFormField(
                      style: TextStyle(color: mainColor),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                          hintText: "Search for hotels, places",
                          prefixIcon: Icon(Icons.search, color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ))),
                ),
              ),
              Row(children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        searchProperty = 1;
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        searchProperty = 0;
                      });
                    },
                    child: searchProperty == 1
                        ? Container(
                            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            padding: const EdgeInsets.only(left: 8),
                            height: 35,
                            width: 95,
                            decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(children: [
                              Icon(Icons.home_outlined, color: Colors.white),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Hotel",
                                style: TextStyle(color: Colors.white),
                              )
                            ]),
                          )
                        : Container(
                            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            padding: const EdgeInsets.only(left: 8),
                            height: 35,
                            width: 95,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(children: [
                              Icon(Icons.home_outlined, color: Colors.grey),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Hotel",
                                style: TextStyle(color: Colors.grey),
                              )
                            ]),
                          )),
                InkWell(
                    onTap: () {
                      setState(() {
                        searchProperty = 2;
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        searchProperty = 0;
                      });
                    },
                    child: searchProperty == 2
                        ? Container(
                            margin: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                            padding: const EdgeInsets.only(left: 8),
                            height: 35,
                            width: 120,
                            decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(children: [
                              Icon(Icons.home_work_rounded,
                                  color: Colors.white),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Residence",
                                style: TextStyle(color: Colors.white),
                              )
                            ]),
                          )
                        : Container(
                            margin: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                            padding: const EdgeInsets.only(left: 8),
                            height: 35,
                            width: 120,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(children: [
                              Icon(Icons.home_work_rounded, color: Colors.grey),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Residence",
                                style: TextStyle(color: Colors.grey),
                              )
                            ]),
                          )),
                InkWell(
                  onTap: () {
                    setState(() {
                      searchProperty = 3;
                    });
                  },
                  onDoubleTap: () {
                    setState(() {
                      searchProperty = 0;
                    });
                  },
                  child: searchProperty == 3
                      ? Container(
                          margin: const EdgeInsets.fromLTRB(0, 15, 20, 10),
                          padding: const EdgeInsets.only(left: 8),
                          height: 35,
                          width: 115,
                          decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(children: [
                            Icon(Boxicons.bxs_building_house,
                                color: Colors.white),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Penthouse",
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                        )
                      : Container(
                          margin: const EdgeInsets.fromLTRB(0, 15, 20, 10),
                          padding: const EdgeInsets.only(left: 8),
                          height: 35,
                          width: 115,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 254, 254, 254),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(children: [
                            Icon(Boxicons.bxs_building_house,
                                color: Colors.grey),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Penthouse",
                              style: TextStyle(color: Colors.grey),
                            )
                          ]),
                        ),
                )
              ]),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nearby your location",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      Text(
                        "See all ",
                        style: TextStyle(fontSize: 16),
                      )
                    ]),
              ),
              SizedBox(
                width: 400,
                height: 330,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                    ),
                    shrinkWrap: true,
                    itemCount: nearby.length,
                    itemBuilder: (context, index) {
                      NearbyLocation near = nearby[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailHotel(nearby: near)));
                        },
                        child: Container(
                          height: 290,
                          width: 100,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: mainColor.withOpacity(0.8),
                                  blurRadius: 5,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(5, 8),
                                  spreadRadius: 1)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: near.mainImage.image),
                              ),
                              child: Stack(children: [
                                Positioned(
                                  top: 12,
                                  right: 10,
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50)),
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
                                    ),
                                  ),
                                )
                              ]),
                            ),
                            Container(
                              margin: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    near.name,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Row(children: [
                                    Icon(
                                      CupertinoIcons.star_fill,
                                      size: 16,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(near.rating.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13)),
                                  ]),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Iconsax.location),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    near.adress,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 195, bottom: 10, top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                        text: near.price,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                        children: [
                                          TextSpan(
                                            text: " /night",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 15),
                                          )
                                        ]),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        ),
                      );
                    }),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Destination",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Column(
                children: popular.map((pop) {
                  return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      height: 120,
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 2),
                          ]),
                      child: Row(children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover, image: pop.mainImage.image),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    pop.name,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: pop.price,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                            text: "/night",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 15),
                                          )
                                        ]),
                                  ),
                                ],
                              ),
                              Row(children: [
                                Text(
                                  pop.adress,
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      pop.rating.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ]),
                            ],
                          ),
                        ),
                      ]));
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NearbyLocation {
  String name;
  double rating;
  Image mainImage;
  String price;
  bool isLike;
  String adress;
  bool isWifi;
  bool isbreastFast;
  String description;
  List<Image> imagePreview;
  bool isFavourite;
  NearbyLocation(
      {required this.name,
      required this.mainImage,
      required this.rating,
      required this.imagePreview,
      required this.isLike,
      required this.price,
      required this.adress,
      required this.isWifi,
      required this.isbreastFast,
      required this.description,
      required this.isFavourite});
}

class PopularLocation {
  String name;
  double rating;
  Image mainImage;

  String price;
  String adress;
  bool isWifi;
  bool isbreastFast;
  String description;
  List<Image> imagePreview;
  bool isFavourite;
  PopularLocation(
      {required this.name,
      required this.mainImage,
      required this.rating,
      required this.imagePreview,
      required this.price,
      required this.adress,
      required this.isWifi,
      required this.isbreastFast,
      required this.description,
      required this.isFavourite});
}
