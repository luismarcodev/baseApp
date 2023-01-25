import 'dart:math';

import 'package:base_app/pages/item/item_page.dart';
import 'package:base_app/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../models/item_model.dart';

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
        child: Center(
          child: Text('${item.translationKey}.title').tr(),
        ),
      ),
    );
  }
}
