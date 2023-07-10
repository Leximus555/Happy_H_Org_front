import 'package:flutter/material.dart';
import 'package:organization_app1/features/pending/models/pending.dart';
import 'package:organization_app1/features/pending/models/pending_service_holder.dart';

import '../history/models/selected_service_holder.dart';
import '../profile/models/organization_service_holder.dart';


class PendingPage extends StatelessWidget {
  final List<Pending> selectedServiceList;

  const PendingPage({Key? key, required this.selectedServiceList}) : super(key: key);

  goToHome(BuildContext context){
    debugPrint("Go to home page");
    Navigator.of(context).pushNamed("/");
  }

  goToOrdersHistory(BuildContext context){
    debugPrint("Go to Order's History");
    Navigator.of(context).pushNamed("/profile/history");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        leading: IconButton(
          icon: const Icon(Icons.home),
          tooltip: 'Home page',
          onPressed: () {
            goToHome(context);
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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 0.7,
            ),
            children: List.generate(selectedServiceList.length, (index) {
              // TODO: Заменить на другой виджет, чтобы нельзя было закать повтороно в корзине
              // TODO: Подумуть нужно ли замечание выше
              return PendingServiceHolder(service: selectedServiceList[index].service);
            }),
          ),
        ],
      ),
    );
  }
}
