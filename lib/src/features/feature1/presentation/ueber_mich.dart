import 'package:flutter/material.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/feature1/domain/user_info.dart';

UserInfo ferhat = const UserInfo(
  userName: "Ferhat Tüzün",
  userJob: "Hobby Koch",
  userBio: ".......................",
);

class UeberMich extends StatelessWidget {
  const UeberMich({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            "Profil",
            style: TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 32),
          const Icon(
            Icons.person,
            size: 62,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(ferhat.userName),
          Text(ferhat.userJob),
          Text(ferhat.userBio)
        ],
      ),
    );
  }
}
