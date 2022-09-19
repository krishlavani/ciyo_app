import 'package:ciyo_app/model/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: ListTile(
        visualDensity: const VisualDensity(
          horizontal: 0.0,
          vertical: .0,
        ),
        onTap: () {
          print("${item.title} pressed.");
        },
        leading: SizedBox(
          height: 50,
          width: 50,
          child: Image.network(
            item.img,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          item.title,
          style: const TextStyle(
            fontFamily: 'SFProText',
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          item.text,
          style: const TextStyle(
            fontFamily: 'SFProText',
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        trailing: Text(
          "\$${item.id}",
          style: const TextStyle(
            fontFamily: 'SFProText',
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
