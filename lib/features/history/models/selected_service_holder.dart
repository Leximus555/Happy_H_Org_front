import 'package:flutter/material.dart';
import 'package:organization_app1/features/history/models/selected_services.dart';

class SelectedServiceHolder extends StatelessWidget {
  final SelectedService service;

  const SelectedServiceHolder({
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
                    child: Stack(
                      children: [
                        Container(
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
                                                image:
                                                    AssetImage(service.image),
                                              )),
                                          const Text("Description"),
                                          // TODO: Прикол с тем что текст не всегда поместиться
                                          Text(service.description),
                                        ]),
                                      ),
                                      children: [],
                                    ));
                          }),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                      flex: 2,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            children: [
                              Flexible(
                                child: Column(children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Text(
                                      service.title,
                                      // textScaleFactor: 1.1,
                                      softWrap: false,
                                      // textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                  ),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              service.date,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  top: 5, right: 10, bottom: 5),
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                "${service.price} ₽",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium,
                                              ),
                                            ),
                                          ])),
                                ]),
                              ),
                            ],
                          )))
                ],
              )),
        ],
      ),
    );
  }
}
