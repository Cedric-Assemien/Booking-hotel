import 'package:booking_hotel/detail_hotel.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NearbyLocation> nearby = [
    NearbyLocation(
        name: "The luxury hotel with pool",
        mainImage: Image.asset("assets/images/Cabecera_M.jpg"),
        price: "\$ 200",
        adress: "Lohore, Pakistan",
        rating: 4.5,
        isFavourite: false,
        isWifi: true,
        isbreastFast: true,
        description: "This is a description for the first item.",
        imagePreview: [
          Image.asset("assets/images/Cabecera_M.jpg"),
          Image.asset("assets/images/Cabecera_M.jpg"),
          Image.asset("assets/images/Cabecera_M.jpg"),
          Image.asset("assets/images/Cabecera_M.jpg"),
        ]),
    NearbyLocation(
        name: "The luxury residence with pool",
        mainImage: Image.asset("assets/images/madbookies.jpg"),
        price: "\$ 300",
        adress: "abidjan,CI",
        rating: 4.5,
        isFavourite: false,
        isWifi: true,
        isbreastFast: true,
        description: "This is a description for the second item.",
        imagePreview: [
          Image.asset("assets/images/madbookies.jpg"),
          Image.asset("assets/images/madbookies.jpg"),
          Image.asset("assets/images/madbookies.jpg"),
          Image.asset("assets/images/madbookies.jpg"),
        ]),
    NearbyLocation(
        name: "The palace with pool",
        mainImage: Image.asset("assets/images/Palace5.jpg"),
        price: "\$ 1000",
        adress: "Dakar,senegal",
        rating: 3.0,
        isFavourite: false,
        isWifi: true,
        isbreastFast: true,
        description: "This is a description for the third item.",
        imagePreview: [
          Image.asset("assets/images/Palace5.jpg"),
          Image.asset("assets/images/Palace5.jpg"),
          Image.asset("assets/images/Palace5.jpg"),
          Image.asset("assets/images/Palace5.jpg"),
        ]),
    NearbyLocation(
        name: "The manoir with pool",
        mainImage: Image.asset("assets/images/hotels-luxe.jpg"),
        price: "\$ 2000",
        adress: "dubai, UAE",
        rating: 4.5,
        isFavourite: false,
        isWifi: true,
        isbreastFast: true,
        description: "This is a description for the first item.",
        imagePreview: [
          Image.asset("assets/images/hotels-luxe.jpg"),
          Image.asset("assets/images/hotels-luxe.jpg"),
          Image.asset("assets/images/hotels-luxe.jpg"),
          Image.asset("assets/images/hotels-luxe.jpg"),
        ]),
    NearbyLocation(
        name: "The luxury  with pool",
        mainImage: Image.asset("assets/images/05-The-Pa.jpg"),
        price: "\$ 800",
        adress: "Lohore, Pakistan",
        rating: 4.7,
        isFavourite: false,
        isWifi: true,
        isbreastFast: true,
        description: "This is a description for luxury.",
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
        price: "\$ 199.9",
        adress: "westhal, PK",
        rating: 5.0,
        isFavourite: false,
        isWifi: true,
        isbreastFast: true,
        description: "This is a description for luxury for lahore.",
        imagePreview: [
          Image.asset("assets/images/1518365.jpg"),
          Image.asset("assets/images/1518365.jpg"),
          Image.asset("assets/images/1518365.jpg"),
          Image.asset("assets/images/1518365.jpg"),
        ]),
    PopularLocation(
        name: "Abidjan hotel",
        mainImage: Image.asset("assets/images/Slide-2.jpg"),
        price: "\$ 300",
        adress: "westhal, PK",
        rating: 5.0,
        isFavourite: false,
        isWifi: true,
        isbreastFast: true,
        description: "This is a description for luxury for Abidjan.",
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
        price: "\$ 400",
        adress: "westhal, PK",
        rating: 4.0,
        isFavourite: false,
        isWifi: true,
        isbreastFast: true,
        description: "This is a description for luxury for Bassam.",
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
              Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Row(children: [
                  const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current location",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Row(children: [
                          Icon(Icons.location_on_rounded),
                          Text(
                            "Lohore, Pakistan",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            size: 32,
                          ),
                        ]),
                      ]),
                  const Spacer(),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 233, 232, 232)),
                        color: Colors.white),
                    child: const Icon(Icons.notifications_rounded),
                  ),
                ]),
              ),
              Row(children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  padding: const EdgeInsets.only(left: 8),
                  height: 35,
                  width: 95,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 56, 55, 55),
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
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  padding: const EdgeInsets.only(left: 8),
                  height: 35,
                  width: 95,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(children: [
                    Icon(Boxicons.bx_store_alt, color: Colors.grey),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Market",
                      style: TextStyle(color: Colors.grey),
                    )
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 15, 20, 10),
                  padding: const EdgeInsets.only(left: 8),
                  height: 35,
                  width: 95,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 254, 254, 254),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(children: [
                    Icon(FeatherIcons.coffee, color: Colors.grey),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Coffee",
                      style: TextStyle(color: Colors.grey),
                    )
                  ]),
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
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 217, 216, 216),
                                blurRadius: 2,
                              )
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
                                    child:
                                        const Icon(CupertinoIcons.heart_fill),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  near.adress,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12.5),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, bottom: 10, top: 8),
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
              SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: popular.length,
                    itemBuilder: (context, index) {
                      PopularLocation pop = popular[index];
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
                                    fit: BoxFit.cover,
                                    image: pop.mainImage.image),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                                    fontWeight:
                                                        FontWeight.normal,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                    }),
              ),
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
