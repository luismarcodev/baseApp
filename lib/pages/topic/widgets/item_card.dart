import 'dart:math';

import 'package:base_app/pages/item/item_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../models/item_model.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemPage(
              item: item,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                NetworkImage(item.urlImage + Random().nextInt(100).toString()),
            fit: BoxFit.cover,
          ),
        ),
        width: 150,
        height: 150,
        child: Container(
          decoration: const BoxDecoration(shape: BoxShape.circle),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          alignment: AlignmentDirectional.center,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Container(
              color: const Color.fromRGBO(255, 255, 255, 0.5),
              padding: const EdgeInsets.all(18),
              child: Text(
                '${item.translationKey}.title',
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ).tr(),
            ),
          ),
        ),
      ),
    );
  }
}
