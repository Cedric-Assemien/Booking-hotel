import 'package:booking_hotel/chats/message_detail.dart';
import 'package:booking_hotel/main%20app/home_page.dart';
import 'package:booking_hotel/setting/account.dart';
import 'package:booking_hotel/setting/credit_cart.dart';
import 'package:booking_hotel/setting/privacy_security.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NearbyLocation {
  String name;
  double rating;
  Image mainImage;
  String price;
  bool isLike;
  String adress;

  String description;
  List<Image> imagePreview;

  NearbyLocation({
    required this.name,
    required this.mainImage,
    required this.rating,
    required this.imagePreview,
    required this.isLike,
    required this.price,
    required this.adress,
    required this.description,
  });
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
  bool isLike;
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
      required this.isLike});
}

class Settinglist {
  String name;
  IconData startIcon;

  Widget destination;
  Settinglist(
      {required this.name, required this.startIcon, required this.destination});
}

class Questions {
  String question;

  Questions(this.question);
}

List<NearbyLocation> nearby = [
  NearbyLocation(
      name: "The luxury hotel ",
      mainImage: Image.asset("assets/images/Cabecera_M.jpg"),
      price: "200",
      adress: "Lohore, Pakistan",
      rating: 4.5,
      isLike: false,
      description:
          "The luxury hotel  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
      imagePreview: [
        Image.asset("assets/images/Cabecera_M.jpg"),
        Image.asset("assets/images/Cabecera_M.jpg"),
        Image.asset("assets/images/Cabecera_M.jpg"),
        Image.asset("assets/images/Cabecera_M.jpg"),
      ]),
  NearbyLocation(
      name: "The luxury residence ",
      mainImage: Image.asset("assets/images/madbookies.jpg"),
      price: " 300",
      adress: "abidjan,CI",
      isLike: true,
      rating: 4.5,
      description:
          "The luxury residence  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
      imagePreview: [
        Image.asset("assets/images/madbookies.jpg"),
        Image.asset("assets/images/madbookies.jpg"),
        Image.asset("assets/images/madbookies.jpg"),
        Image.asset("assets/images/madbookies.jpg"),
      ]),
  NearbyLocation(
      name: "The palace ",
      mainImage: Image.asset("assets/images/Palace5.jpg"),
      price: " 1000",
      adress: "Dakar,senegal",
      isLike: false,
      rating: 3.0,
      description:
          "The palace  .Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
      imagePreview: [
        Image.asset("assets/images/Palace5.jpg"),
        Image.asset("assets/images/Palace5.jpg"),
        Image.asset("assets/images/Palace5.jpg"),
        Image.asset("assets/images/Palace5.jpg"),
      ]),
  NearbyLocation(
      name: "The manoir ",
      mainImage: Image.asset("assets/images/hotels-luxe.jpg"),
      price: " 2000",
      adress: "dubai, UAE",
      isLike: true,
      rating: 4.5,
      description:
          "The manoir  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
      imagePreview: [
        Image.asset("assets/images/hotels-luxe.jpg"),
        Image.asset("assets/images/hotels-luxe.jpg"),
        Image.asset("assets/images/hotels-luxe.jpg"),
        Image.asset("assets/images/hotels-luxe.jpg"),
      ]),
  NearbyLocation(
      name: "The luxury ",
      mainImage: Image.asset("assets/images/05-The-Pa.jpg"),
      price: " 800",
      adress: "Lohore, Pakistan",
      isLike: false,
      rating: 4.7,
      description:
          "The luxury  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
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
      isLike: false,
      isWifi: true,
      isbreastFast: true,
      description:
          "Lahore hotel Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
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
      isLike: false,
      isWifi: true,
      isbreastFast: true,
      description:
          "Abidjan hotel Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
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
      isLike: false,
      isWifi: true,
      isbreastFast: true,
      description:
          "Bassam hotel Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.",
      imagePreview: [
        Image.asset("assets/images/type de chambre par agencement.webp"),
        Image.asset("assets/images/type de chambre par agencement.webp"),
        Image.asset("assets/images/type de chambre par agencement.webp"),
        Image.asset("assets/images/type de chambre par agencement.webp"),
      ]),
];

List<Settinglist> settingAll = [
  Settinglist(
      name: "Acccount", startIcon: Icons.person, destination: Account()),
  Settinglist(
      name: "credit card",
      startIcon: Icons.credit_card,
      destination: CreditCart()),
  Settinglist(
      name: "Privacy & security",
      startIcon: Icons.security,
      destination: PrivacySecurity()),
];

List<Questions> questionFrequente = [
  Questions(
    "How can I update my account information?",
  ),
  Questions(
    "How can I generate my payments?",
  ),
  Questions("How can I make a reservation?"),
  Questions("How can I manage my rental payments?"),
  Questions("How do I delete information from my account?"),
  Questions("How do I create a reservation?"),
  Questions("What personal data is collected?"),
];
Widget bottomSheetSAV(BuildContext context) {
  return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        gradient: LinearGradient(
          colors: [mainColor, Colors.white.withOpacity(0.7)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text("Service SAV",
              style: TextStyle(color: Colors.white, fontSize: 25)),
          const Divider(
            color: Colors.white,
            thickness: 2,
            endIndent: 20,
            indent: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello Loverel,",
                    style: TextStyle(color: Colors.white, fontSize: 23)),
                Text("How can we help you?",
                    style: TextStyle(color: Colors.white, fontSize: 23)),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            elevation: 20,
            color: Colors.transparent,
            child: Container(
                height: 290,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.8)),
                child: Column(children: [
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MessageDetail()));
                    },
                    child: Card(
                        elevation: 10,
                        child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white.withOpacity(0.8)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Chat with an agent",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 17)),
                                SizedBox(
                                  width: 130,
                                ),
                                Icon(Iconsax.message5,
                                    color: mainColor, size: 30),
                              ],
                            ))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                      elevation: 10,
                      child: Container(
                          height: 190,
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.8)),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Frequently asked questions",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 17)),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Icon(Iconsax.message_question5,
                                      color: mainColor, size: 30),
                                ],
                              ),
                              const Divider(
                                color: Colors.black,
                                thickness: 2,
                                indent: 10,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 130,
                                child: ListView.builder(
                                  itemCount: questionFrequente.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                       
                                          questionFrequente[index].question,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ))),
                ])),
          )
        ],
      ));
}
