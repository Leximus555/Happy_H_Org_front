import 'package:flutter/material.dart';

class EditInfoButton extends StatelessWidget {
  final String tag;
  const EditInfoButton({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: tag,
      elevation: 0.0,
      // TODO: Вынести цвет в тему
      backgroundColor: Colors.blueGrey[800],
      onPressed: () {
        debugPrint("Edit field");
      },
      child: const Icon(
        Icons.edit,
        size: 30.0,
      ),
    );
  }
}
