import 'package:flutter/material.dart';
import 'package:gympass/screens/components/gym_card.dart';
import 'package:gympass/theme/colors.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text(
          "Check-In",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Container(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/Jogging.png", height: 100),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("28",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    Text("Check-Ins"),
                    SizedBox(height: 16),
                    Text("0",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    Text("Check-Ins seguidos"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 90),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.under_background,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        const Text(
                          "Academias próximas",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(top: 60),
                          child: Row(
                            children: const [
                              GymCard("Academia Hit", "1.2 km",
                                  "https://play-lh.googleusercontent.com/dmtdoIMsdid2UtgO09PJZi2kekOZDY76pC02rT9U7M_sUdu_XXDrNMDCK2n1dFzuLiHx=w240-h480-rw"),
                              GymCard("Academia Duo", "2.5 km",
                                  "https://play-lh.googleusercontent.com/SlSM3jxmLabNXvRdesTFrevveqPXXR53orBf7oIILrRfaUTL7S6NtAmtH_UgQfgmdQvY=w240-h480-rw"),
                              GymCard("Academia RW", "3.1 km",
                                  "https://instagram.fcau23-1.fna.fbcdn.net/v/t51.2885-19/459188439_907729041440510_8980851554698154804_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcau23-1.fna.fbcdn.net&_nc_cat=102&_nc_oc=Q6cZ2AGpuVT-9GffC04G25fCDsZPCLH6Pvj88iMLATPl1uu4Kbmkh6r1oXILIUJQK0o82NQ&_nc_ohc=EPt3hQtwRLQQ7kNvgHiObTR&_nc_gid=a1365b31a35040669b22306fa6d594d1&edm=AP4sbd4BAAAA&ccb=7-5&oh=00_AYByFgScaD5o6I5a1Dq1bnaWOZk-HH3roWGMPuejBA593g&oe=67B5E62B&_nc_sid=7a9f4b"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
