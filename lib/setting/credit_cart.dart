import 'package:booking_hotel/main%20app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreditCart extends StatefulWidget {
  const CreditCart({super.key});

  @override
  State<CreditCart> createState() => _CreditCartState();
}

class _CreditCartState extends State<CreditCart> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController numCarteCredit;
  late TextEditingController dateExpire;
  late TextEditingController numCCV;

  @override
  void initState() {
    super.initState();
    numCarteCredit = TextEditingController();
    dateExpire = TextEditingController();
    numCCV = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    numCarteCredit.dispose();
    dateExpire.dispose();
    numCCV.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 10,
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
                  width: 120,
                ),
                const Text(
                  "Credit card",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Card(
                elevation: 10,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 17, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              "Ajouter votre carte de crédit",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(
                              height: 60,
                              width: 60,
                              child:
                                  Image.asset("assets/images/visa_master.png"),
                            )
                          ],
                        ),
                      ),
                      TextFormField(
                        cursorColor: Colors.white,
                        style: TextStyle(
                          color: Colors.white, // mainColor, du texte
                        ),
                        keyboardType: TextInputType.text,
                        controller: numCarteCredit,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'complete the fields';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(22),
                              borderSide: BorderSide(
                                color: mainColor,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(22),
                              borderSide: const BorderSide(
                                color: Colors.green,
                                width: 5,
                              ),
                            ),
                            filled: true,
                            fillColor: mainColor.withOpacity(0.8),
                            hintText: "card number",
                            hintStyle: const TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                              Iconsax.card,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 130,
                            child: TextFormField(
                              cursorColor: mainColor,
                              style: TextStyle(
                                color: Colors.white, // mainColor, du texte
                              ),
                              keyboardType: TextInputType.number,
                              controller: dateExpire,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'complete the fields';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(22),
                                    borderSide: BorderSide(
                                      color: mainColor,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(22),
                                    borderSide: const BorderSide(
                                      color: Colors.green,
                                      width: 5,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: mainColor.withOpacity(0.8),
                                  hintText: "expiration date",
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  prefixIcon: Icon(
                                    Iconsax.calendar_1,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 130,
                            child: TextFormField(
                              cursorColor: Colors.white,
                              style: TextStyle(
                                color: Colors.white, // mainColor, du texte
                              ),
                              keyboardType: TextInputType.number,
                              controller: numCCV,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'complete the fields';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(22),
                                    borderSide: BorderSide(
                                      color: mainColor,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(22),
                                    borderSide: const BorderSide(
                                      color: Colors.green,
                                      width: 5,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: mainColor.withOpacity(0.8),
                                  hintText: "CCV",
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  prefixIcon: Icon(
                                    MdiIcons.cardBulletedSettingsOutline,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 10,
                                backgroundColor: mainColor,
                                foregroundColor: Colors.white),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {}
                            },
                            child: const Text(
                              "add card",
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
