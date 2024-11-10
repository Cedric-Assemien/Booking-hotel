
import 'package:flutter/material.dart';

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
 