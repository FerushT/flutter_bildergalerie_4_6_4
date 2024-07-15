import 'package:flutter/material.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/profile/domain/user_info.dart';

UserInfo ferhat = const UserInfo(
    userName: "Ferhat Tüzün",
    userJob: "Hobby Koch",
    userBio:
        '''Ferhat ist ein begeisterter Hobbykoch, der seine Freizeit mit der Erkundung neuer kulinarischer Kreationen verbringt.Schon in seiner Kindheit inspiriert, kombiniert er traditionelle Rezepte mit modernen Einflüssen und legt dabei großen Wert auf frische, regionale Zutaten. Besonders liebt er mediterrane und orientalische Speisen, die er mit viel Leidenschaft und Kreativität zubereitet. Seine Freunde und Familie schätzen seine Kochkünste und die geselligen Abende, die er mit seinen Gerichten bereichert. Ferhat teilt seine kulinarischen Erlebnisse und Rezepte gerne in sozialen Medien, wo er eine begeisterte Fangemeinde hat.\n\nEr experimentiert oft mit neuen Zutaten und Techniken, um einzigartige Geschmackserlebnisse zu schaffen. Ferhat besucht regelmäßig lokale Märkte, um die besten Produkte auszuwählen. Seine Küche ist ein Ort der Inspiration und Freude, in dem er immer wieder neue Gerichte kreiert. Auch das Anrichten der Speisen ist ihm wichtig, da er großen Wert auf eine ansprechende Präsentation legt. Seine Leidenschaft für das Kochen ist ansteckend und motiviert andere, ebenfalls kreativ in der Küche zu werden.''',
    userDate: "12.07.2024",
    userImagePath: "assets/images/profilbild_ferhat.jpg");

class UeberMich extends StatelessWidget {
  const UeberMich({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(148, 209, 178, 140),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                  "Profil",
                  style: TextStyle(fontSize: 32),
                ),
                const SizedBox(height: 32),
                CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage(ferhat.userImagePath),
                  child: null,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  ferhat.userName,
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  ferhat.userJob,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(ferhat.userDate),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  ferhat.userBio,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
