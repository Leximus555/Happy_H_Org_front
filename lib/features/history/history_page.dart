import 'package:flutter/material.dart';
import 'package:organization_app1/features/history/models/selected_services.dart';
import 'package:organization_app1/features/history/models/selected_service_holder.dart';

// TODO: Сделать фильтрацию по датам
// TODO: Добавить возможность смотреть товары по заказам
class HistoryPage extends StatelessWidget {
  final List<SelectedService> historyList;

  const HistoryPage({super.key, required this.historyList});

  goToHome(BuildContext context){
    debugPrint("Go to home page");
    Navigator.of(context).pushNamed("/");
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
              icon: const Icon(Icons.edit_calendar),
              tooltip: 'Home page',
              onPressed: () {
                //goToOrdersHistory(context);
              },
            ),
          ],
        ),
        body: Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[700],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: ListView(physics: const BouncingScrollPhysics(), children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueGrey[900],
              ),
              alignment: Alignment.center,
              height: 70,
              child: Text(
                "History",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
          ListView.separated(
            physics: const ScrollPhysics(),
            // TODO: Заменить на Sliver?
            shrinkWrap: true,
            itemCount: historyList.length,
            itemBuilder: (BuildContext context, int i) {
              // TODO: Как-то переделать, так как кринж) этот ваш aspectratio
              return AspectRatio(
                  aspectRatio: 18 / 17,
                  child: SelectedServiceHolder(service: historyList[i]));
            },
            separatorBuilder: (BuildContext context, int index) {
              // TODO: Решить нужна ли эта линия,
              //  если нетвернуть к builder и сделать Pagging
              return const Divider(
                height: 30,
              );
            },
          ),
        ]),
      ),
    ));
  }
}
