import 'package:booking_hotel/navigation_bar.dart';
import 'package:booking_hotel/signIn_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:social_media_buttons/social_media_icons.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nomController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nomController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    nomController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Image.asset("assets/images/easyStay.png"),
            ),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Getting started",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Create account to continue",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 246, 244, 244),
                                        shape: const CircleBorder()),
                                    onPressed: () {},
                                    label: const Icon(
                                      SocialMediaIcons.google,
                                      color: Colors.red,
                                    )),
                                ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 24, 4, 209),
                                        shape: const CircleBorder()),
                                    onPressed: () {},
                                    label: const Icon(
                                      SocialMediaIcons.facebook,
                                      color: Colors.white,
                                    )),
                                ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xff82dcff),
                                        shape: const CircleBorder()),
                                    onPressed: () {},
                                    label: const Icon(
                                      SocialMediaIcons.twitter,
                                      color: Colors.white,
                                    ))
                              ]),
                          const SizedBox(
                            height: 30,
                          ),
                          Form(
                            key: formKey,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20, bottom: 20),
                                  child: TextFormField(
                                    controller: emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "remplissez les champs";
                                      } else {
                                        FocusScope.of(context).unfocus();
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Enter your email",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.orange),
                                        ),
                                        filled: true,
                                        fillColor: Colors.grey.withOpacity(0.1),
                                        prefixIcon: const Icon(
                                            Icons.mail_outline_outlined)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20, bottom: 20),
                                  child: TextFormField(
                                    controller: nomController,
                                    keyboardType: TextInputType.text,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "remplissez les champs";
                                      } else {
                                        FocusScope.of(context).unfocus();
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      hintText:
                                          "Enter your username",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide.none,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                            color: Colors.orange),
                                      ),
                                      filled: true,
                                      fillColor: Colors.grey.withOpacity(0.1),
                                      prefixIcon:
                                          const Icon(Icons.person_3_outlined),
                                      suffix: const Icon(
                                        Icons.check_circle_outline_sharp,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20, bottom: 20),
                                  child: TextFormField(
                                    obscureText: true,
                                    controller: passwordController,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "remplissez les champs";
                                      } else {
                                        FocusScope.of(context).unfocus();
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Enter your password",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.orange),
                                        ),
                                        filled: true,
                                        fillColor: Colors.grey.withOpacity(0.1),
                                        prefixIcon:
                                            const Icon(Icons.lock_outline),
                                        suffixIcon:
                                            Icon(MdiIcons.eyeOffOutline)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: mainColor,
                                    fixedSize: const Size(350, 60)),
                                onPressed: () {},
                                child: Text(
                                  "Sign up".toUpperCase(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Already have an account ?"),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SigninPage()));
                                  },
                                  child: Text(
                                    "Sign in",
                                    style: TextStyle(color: mainColor),
                                  ),
                                )
                              ])
                        ]),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
