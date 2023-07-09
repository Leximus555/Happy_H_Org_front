import 'package:flutter/material.dart';
import 'models/organization_service_holder.dart';
import 'models/profile_data.dart';
import 'models/avatar.dart';
import 'models/profile.dart';

class ProfilePage extends StatelessWidget {
  // TODO: Чуть переделать логику с AvatarImage
  final Profile profile;

  const ProfilePage({super.key, required this.profile});

  //TODO:вынести
  goToPending(BuildContext context){
    debugPrint("Go to home pending");
    Navigator.of(context).pushNamed("/pending");
  }
  goToOrdersHistory(BuildContext context){
    debugPrint("Go to Order's History");
    Navigator.of(context).pushNamed("/profile/history");
  }

  @override
  Widget build(BuildContext context) {
    int totalSum = 0;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
          leading: IconButton(
            icon: const Icon(Icons.edit_calendar),
            tooltip: 'Home page',
            onPressed: () {
              goToPending(context);
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.history),
              tooltip: 'Home page',
              onPressed: () {
                goToOrdersHistory(context);
              },
            ),
          ],
        ),
        body: Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey[700],
            ),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Avatar(avatarImage: profile.avatar, radius: 130),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: ProfileData(
                        profile: profile,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "My services",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                    GridView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        childAspectRatio: 0.7,
                      ),
                      children: List.generate(profile.serviceList.length, (index) {
                        totalSum += profile.serviceList[index].price;
                        // TODO: Заменить на другой виджет, чтобы нельзя было закать повтороно в корзине
                        // TODO: Подумуть нужно ли замечание выше
                        return OrganizationServiceHolder(service: profile.serviceList[index]);
                      }),
                    ),
                  ],
                )
              ],
            )));
  }
}
