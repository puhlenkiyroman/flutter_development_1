import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: [
        Card(
          child: ListTile(
            title: Text('Элемент 1'),
            subtitle: Text('Описание элемента 1'),
            onTap: () {
              // Действие при нажатии на элемент списка
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Элемент 2'),
            subtitle: Text('Описание элемента 2'),
            onTap: () {
              // Действие при нажатии на элемент списка
            },
          ),
        ),
        // Добавьте нужное количество Card с ListTile в ListView
      ],
    );
  }
}
