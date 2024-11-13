import 'package:booking_hotel/main%20app/home_page.dart';
import 'package:flutter/material.dart';

class PrivacySecurity extends StatefulWidget {
  const PrivacySecurity({super.key});

  @override
  State<PrivacySecurity> createState() => _PrivacySecurityState();
}

class _PrivacySecurityState extends State<PrivacySecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 20),
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
                      width: 80,
                    ),
                    const Text(
                      "Privacy & Security",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 210, top: 20),
                child: Text("1. Introduction",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              const SizedBox(
                width: 300,
                child: Text(
                    textAlign: TextAlign.justify,
                    softWrap: true,
                    "Welcome to EasyStay! We are committed to protecting and respecting your privacy. This privacy policy explains how we collect, use, disclose and protect your personal information when you use our mobile application."),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: const Text("2. Information we collect",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              const SizedBox(
                width: 300,
                child: Text(
                  textAlign: TextAlign.justify,
                  softWrap: true,
                  """We may collect and process the following data:
                  Identification information: name, e-mail address, telephone number.
                  Login information: account IDs, passwords.
                  Location information: GPS data to provide location-based services.
                  Transaction information: details of payments and transactions carried out via the application.
                  Technical information: IP address, browser type, operating system.
""",
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 45),
                child: Text("3. Use of your information",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              const SizedBox(
                width: 300,
                child: Text(
                    textAlign: TextAlign.justify,
                    softWrap: true,
                    """ We use your information to:
                    Provide and improve our services.
                    Manage your account and preferences.
                    Process transactions and send confirmations.
                    Respond to your requests and provide customer support.
                    Personalize your user experience."""),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 70),
                child: Text("4. Shared your information",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              const SizedBox(
                width: 300,
                child: Text(
                    textAlign: TextAlign.justify,
                    softWrap: true,
                    """We do not sell, trade or rent your personal information to third parties. We may share your information with :
Our trusted partners who help us operate our application and provide our services.
Legal authorities if we are required to do so to comply with the law. """),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 175),
                child: Text("5. Data security",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              const SizedBox(
                width: 300,
                child: Text(
                    textAlign: TextAlign.justify,
                    softWrap: true,
                    """We implement appropriate security measures to protect your information against unauthorized access, modification, disclosure or destruction."""),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 210),
                child: Text("6. Your rights",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              const SizedBox(
                width: 300,
                child: Text(
                    textAlign: TextAlign.justify,
                    softWrap: true,
                    """You have the right to :
                Access your personal information.
                Request correction of your information.
                Request the deletion of your information.
                Oppose the processing of your information.
                Withdraw your consent at any time. """),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
