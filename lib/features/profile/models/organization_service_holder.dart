import 'package:flutter/material.dart';
import 'organization_service.dart';

// Этот класс дубликат другого
// TODO: вынести класс выше или применить адаптер к однотипным классам
class OrganizationServiceHolder extends StatelessWidget {
  final OrganizationService service;

  const OrganizationServiceHolder({
    Key? key,
    required this.service,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey[900],
              ),
              child: Column(
                children: [
                  Flexible(
                    flex: 6,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            alignment: FractionalOffset.topCenter,
                            image: AssetImage(service.image),
                          )),
                    ),
                  ),
                  Flexible(
                      flex: 2,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            children: [
                              Flexible(
                                child: Container(
                                  alignment: Alignment.topCenter,
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    service.title,
                                    // textScaleFactor: 1.1,
                                    softWrap: false,
                                    // textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "Price: ${service.price}₽",
                                    // textScaleFactor: 1.1,
                                    softWrap: false,
                                    // textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                ),
                              ),
                            ],
                          ))),
                ],
              )),
          Material(
            color: Colors.transparent,
            child: InkWell(onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                        title: SingleChildScrollView(
                          child: Column(children: [
                            Text(service.title),
                            AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Image(
                                  image: AssetImage(service.image),
                                )),
                            const Text("Description"),
                            // TODO: Прикол с тем что текст не всегда поместиться
                            Text(service.description),
                          ]),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                // TODO: Изменение параметров услуги
                                debugPrint("Edit service");
                              },
                              style:
                                  Theme.of(context).elevatedButtonTheme.style,
                              child: const Text("Edit service"),
                            ),
                          )
                        ],
                      ));
            }),
          ),
        ],
      ),
    );
  }
}
