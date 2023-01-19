import 'package:base_app/models/item_model.dart';
import 'package:base_app/pages/topic/items/widgets/item_card.dart';
import 'package:flutter/material.dart';

class ItemsHorizontalListView extends StatelessWidget {
  const ItemsHorizontalListView({
    super.key,
    required this.items,
  });

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (BuildContext context, int index) =>
            ItemCard(item: items[index]),
      ),
    );
  }
}
